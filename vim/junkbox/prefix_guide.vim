nnoremap <Space> :PrefixGuide '<Space>' <CR>
vnoremap <Space> :PrefixGuideVisual '<Space>' <CR>
nnoremap , :PrefixGuide '<Space>' <CR>
vnoremap , :PrefixGuideVisual '<Space>' <CR>

command! -nargs=1 PrefixGuide call PrefixGuide('n', <args>)
command! -nargs=1 -range PrefixGuideVisual call PrefixGuide('v', <args>)

let s:floating = has('nvim')

let g:prefixGuide#labels = {
      \'f': '+find',
      \'b': '+buffer',
      \'p': '+plugin',
      \'t': '+toggle',
      \'g': '+git',
      \'w': '+window',
      \}

func! PrefixGuide(mode, prefix) abort
  let prefix = a:prefix ==# ' ' ? '<Space>' : a:prefix
  let guide = s:newGuide(a:mode, prefix)

  if empty(guide)
    echo 'No mappings found for "'.prefix.'"'
    return
  end

  let window = s:openWindow()
  let keys = []

  while v:true
    let [current, found] = s:lookupGuide(guide, keys)

    if !found
      if len(keys) == 0 | return
      else | call remove(keys, -1) | continue
      end
    end

    if s:isMapping(current)
      call s:closeWindow(window)
      let cmd = EscapeKeys(prefix.join(current.keys, ''))
      execute 'call feedkeys("'.cmd.'")'
      return
    end

    let length = MaxLength(map(items(current), {_, v -> v[0]}))
    let items = map(items(current), {_, v -> s:renderItem(length, keys + [v[0]], v[1])})
    call s:renderContent(prefix, keys, items)

    try
      let char = getchar()
    catch /^Vim:Interrupt$/
      call s:closeWindow(window)
      return
    endtry

    if char == 27
      call s:closeWindow(window)
      return
    end

    if char ==# "\<BS>"
      if len(keys)
        call remove(keys, -1)
      end
    " TODO Vurdere denne seksjonen
    elseif char == 32
      call add(keys, '<Space>')
    elseif char == 9
      call add(keys, '<Tab>')
    elseif char == 13
      " call add(keys, '<CR>')
      call s:closeWindow(window)
      return
    else
      call add(keys, nr2char(char))
    end
  endwhile
endf

func! s:parseMap(line)
  let mode = a:line[0]
  let name = split(a:line[3:])[0]
  return maparg(name, mode, 0, 1)
endf

func! s:parseMaps(mode, prefix) abort
  let maps = ''
  redir => maps | silent execute (a:mode.'map'.a:prefix) | redir END
  let parsed = map(split(maps, '\n'), {_, line -> s:parseMap(line)})
  return filter(parsed, {_, map -> map != {} && map.lhs != a:prefix})
endf

func! s:isMapping(v)
  return type(a:v) == type({}) && has_key(a:v, 'noremap')
endf

func s:lookupGuide(guide, keys)
  let guide = a:guide
  for arg in a:keys
    if type(guide) != type({}) | return [guide, 1] | end
    if !has_key(guide, arg) | return [guide, 0] | end
    let guide = guide[arg]
  endfor
  return [guide, 1]
endf

func s:splitKeys(input)
  let result = []
  let i = 0
  let split = v:true

  while i < len(a:input)
    if split
      call add(result, a:input[i])
    else
      let result[-1] .= a:input[i]
    end

    if a:input[i] ==? '<'
      let split = v:false
    elseif a:input[i] ==? '>'
      let split = v:true
    end

    let i += 1
  endwhile

  return result
endf

func s:newGuide(mode, prefix)
  let guide = {}
  for map in s:parseMaps(a:mode, a:prefix)
      let map.lhs = substitute(map.lhs, a:prefix, '', '')
      let map.keys = s:splitKeys(map.lhs)
      let guide = MergeDicts(guide, SequenceToDict(
            \reverse(copy(map.keys)), map))
  endfor
  return guide
endf

func! s:renderItem(length, keys, value)
  let lastKey = a:keys[-1]
  let keys = join(a:keys, '')

  if exists('g:prefixGuide#labels') && has_key(g:prefixGuide#labels, keys)
    let label = g:prefixGuide#labels[keys]
  elseif s:isMapping(a:value)
    let label = a:value.rhs
  else
    let label = '+group'
  end

  if len(lastKey) < a:length
    let lastKey .= repeat(' ', a:length-len(lastKey))
  end

  return printf('%s %s', lastKey, label)
endf

func! s:sortItems(a, b)
  let a = split(a:a, '\v\s+') | let b = split(a:b, '\v\s+')
  if a[1][0] == '+' && b[1][0] == '+' | return a[1] > b[1] ? 1 : -1
  elseif a[1][0] == '+' | return -1
  elseif b[1][0] == '+' | return 1
  else | return a[0] > b[0] ? 1 : -1
  end
endf

func! s:renderContent(prefix, keys, content)
  let pad = s:floating ? 2 : 0
  let padding = repeat(' ', pad)

  let content = sort(a:content, 's:sortItems')
  let content = map(content, {_, v -> padding.v.padding })
  execute 'resize' len(content)

  let maxItem = MaxLength(content)
  execute 'vertical resize' maxItem

  setlocal modifiable
  silent 1,$delete _
  call setline(1, content)
  setlocal nomodifiable

  redraw
  let prompt = '> '
  let keys = join(a:keys, '')

  if s:floating
    let input = keys.'█'
    let spacing = repeat(' ', maxItem - strdisplaywidth(prompt.input) - pad*2)

    echohl FloatBorder | echon '│'.padding
    echohl Number | echon prompt
    echohl Normal | echon input
    echohl FloatBorder | echon spacing.padding.'│'
  else
    echohl Number | echon prompt
    echohl Normal | echon keys
  end

  echohl None
endf

func s:openWindow()
  let window = {'previous': winnr(), 'saved': winsaveview(), 'restore': winrestcmd()}

  if s:floating
    let ui = nvim_list_uis()[0]
    let opts = {
          \ 'relative': 'editor', 'anchor': 'SW', 'style': 'minimal',
          \ 'border': ['╭','─','╮','│','╯','─','╰','│'],
          \ 'width': ui.width, 'height': 1,
          \ 'col': 0, 'row': ui.height-2,
          \ }
    let buf = nvim_create_buf(0, 1)
    let win = nvim_open_win(buf, 1, opts)
  else
    execute 'keepjumps' 'botright' '1new'
  end

  let window.nr = winnr()
  setlocal filetype=prefix_guide
  setlocal buftype=nofile bufhidden=wipe
  setlocal nobuflisted noswapfile

  if s:floating
    " FIXME Save/restore
    setlocal guicursor+=a:Cursor/lCursor
    highlight Cursor blend=100
  else
    " FIXME Save/restore
    setlocal laststatus=0 noshowmode noruler
  end

  return window
endf

func s:closeWindow(window)
  execute a:window.nr.'wincmd w'
  if winnr() == a:window.nr | close! | end
  execute a:window.previous.'wincmd w'
  execute a:window.restore
  call winrestview(a:window.saved)

  if s:floating
    " FIXME Save/restore
    highlight Cursor blend=0
  else
    " FIXME Save/restore
    setlocal laststatus=2 showmode ruler
  end
endf

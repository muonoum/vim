nnoremap , :GuideMenu '<Space>' <CR>
vnoremap , :GuideMenuVisual '<Space>' <CR>

command! -nargs=1 GuideMenu call GuideMenu('n', <args>)
command! -nargs=1 -range GuideMenuVisual call GuideMenu('v', <args>)

hi NormalFloat guibg=#111111

let g:guide_menu#floating = 1

func! GuideMenu(mode, prefix) abort
  let prefix = a:prefix ==# ' ' ? '<Space>' : a:prefix
  let guide = s:newGuide(a:mode, prefix)
  let keys = []
  let window = s:openWindow()

  augroup guideMenuStatus
    autocmd!
    if !g:guide_menu#floating
      autocmd  FileType guide_menu set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
    end
  augroup END

  while v:true
    let current = s:lookupGuide(guide, keys)

    if s:isMapping(current)
      call s:closeWindow(window)
      let cmd = EscapeKeys(prefix.join(current.keys, ''))
      execute 'call feedkeys("'.cmd.'")'
      return
    end

    call s:renderContent(prefix, keys,
          \map(items(current), {_, v -> s:renderItem(v[0], v[1])})
          \)
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
  let maps = ""
  redir => maps | silent execute (a:mode.'map'.a:prefix) | redir END
  let parsed = map(split(maps, '\n'), {_, line -> s:parseMap(line)})
  return filter(parsed, {_, map -> map != {}})
endf

func! s:isMapping(v)
  return type(a:v) == type({}) && has_key(a:v, 'noremap')
endf

func s:newGuide(mode, prefix)
  let guide = {}
  for map in s:parseMaps(a:mode, a:prefix)
      let map.lhs = substitute(map.lhs, a:prefix, '', '')
      let map.keys = split(map.lhs, '\zs')
      let guide = MergeDicts(guide,
            \SequenceToDict(reverse(copy(map.keys)), map))
  endfor
  return guide
endf

func! s:renderItem(k, v)
  return printf('%s  %s', a:k,
        \s:isMapping(a:v) ? a:v.rhs : printf('+group<%s>', a:k))
endf

func s:lookupGuide(guide, keys)
  let guide = a:guide
  for arg in a:keys
    if type(guide) != type({}) | return guide | end
    if !has_key(guide, arg) | return guide | end
    let guide = guide[arg]
  endfor
  return guide
endf

func! s:renderContent(prefix, keys, content)
  let content = sort(a:content)
  execute 'resize' len(a:content)

  setlocal modifiable
  silent 1,$delete _
  call setline(1, a:content)
  setlocal nomodifiable

  redraw
  echohl Number
  echo a:prefix.'-'.join(a:keys, '')
  echohl None
endf

func s:openWindow()
  let window = {'previous': winnr(), 'saved': winsaveview(), 'restore': winrestcmd()}
  if g:guide_menu#floating
    let buf = nvim_create_buf(v:false, v:true)
    let ui = nvim_list_uis()[0]
    let opts = {
          \ 'relative': 'editor',
          \ 'width': ui.width,
          \ 'height': 1,
          \ 'col': ui.width,
          \ 'row': ui.height,
          \ 'anchor': 'NW',
          \ 'style': 'minimal',
          \ }
    let win = nvim_open_win(buf, 1, opts)
  else
    execute 'keepjumps' 'botright' '1new'
  end

  let window.nr = winnr()
  setlocal filetype=guide_menu
  setlocal buftype=nofile bufhidden=wipe
  setlocal nobuflisted noswapfile
  return window
endf

func s:closeWindow(window)
  execute a:window.nr.'wincmd w'
  if winnr() == a:window.nr | close! | end
  execute a:window.previous.'wincmd w'
  execute a:window.restore
  call winrestview(a:window.saved)
  echon
endf

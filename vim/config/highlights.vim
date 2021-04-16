let s:default = {
\ 'accent': '#a39a89',
\ 'black':  '#000000',
\ 'gray1':  '#111111',
\ 'gray2':  '#222222',
\ 'gray3':  '#444444',
\ 'gray4':  '#666666',
\}

let s:scheme = {
\ 'iceberg': {
\   'accent': '#33374c',
\   'gray1':  '#0c0f0f',
\ },
\ 'gruvbox': {
\   'accent': '#a39a89',
\ },
\}

func! s:make_colors()
  let colors = {}
  let scheme = {}
  try | let scheme =  s:scheme[g:colors_name]
  catch | endtry
  for [k, v] in items(s:default)
    let colors[k] = v
  endfor
  for [k, v] in items(scheme)
    let colors[k] = v
  endfor
  return colors
endf

func! s:highlight(group, props)
  let r = ['highlight', a:group]
  for [k, v] in items(a:props)
    call add(r, printf('%s=%s', k, v))
  endfor
  execute join(r, ' ')
endf

func! s:color(colors, name)
  return get(a:colors, a:name, 'magenta')
endf

func! Highlights()
  let c = s:make_colors()

  call s:highlight('Normal', {
  \ 'ctermbg': 'NONE',
  \ 'guibg': 'NONE',
  \})

  call s:highlight('Todo', {
  \ 'ctermbg': 'NONE',
  \ 'guibg': 'NONE',
  \})

  call s:highlight('CursorLine', {
  \ 'ctermbg': '234',
  \ 'cterm': 'bold',
  \ 'guibg': '#1d2021',
  \ 'gui': 'bold',
  \})

  call s:highlight('FoldColumn', {
  \ 'ctermfg': '242',
  \ 'ctermbg': '233',
  \ 'guifg': s:color(c, 'gray4'),
  \ 'guibg': s:color(c, 'gray1'),
  \})

  call s:highlight('Folded', {
  \ 'ctermfg': '242',
  \ 'ctermbg': '233',
  \ 'guifg': s:color(c, 'gray4'),
  \ 'guibg': s:color(c, 'gray1'),
  \})

  call s:highlight('NonText', {
  \ 'ctermfg': '235',
  \ 'guifg': s:color(c, 'gray2'),
  \})

  call s:highlight('SpecialKey', {
  \ 'ctermfg': '235',
  \ 'guifg': s:color(c, 'gray2'),
  \})

  call s:highlight('StatusLine', {
  \ 'ctermfg': '233',
  \ 'ctermbg': '242',
  \ 'guifg': s:color(c, 'gray1'),
  \ 'guibg': s:color(c, 'gray4'),
  \})

  call s:highlight('StatusLineNC', {
  \ 'ctermfg': '233',
  \ 'ctermbg': '235',
  \ 'guifg': s:color(c, 'gray1'),
  \ 'guibg': s:color(c, 'gray3'),
  \})

  call s:highlight('VertSplit', {
  \ 'ctermfg': '233',
  \ 'ctermbg': '233',
  \ 'guifg': s:color(c, 'gray1'),
  \ 'guibg': s:color(c, 'gray1'),
  \})

  call s:highlight('ActiveStatusLine1', {
  \ 'ctermfg': '232',
  \ 'ctermbg': '250',
  \ 'cterm': 'bold',
  \ 'guifg': s:color(c, 'black'),
  \ 'guibg': s:color(c, 'accent'),
  \ 'gui': 'bold',
  \})

  call s:highlight('ActiveStatusLine2', {
  \ 'ctermfg': '242',
  \ 'ctermbg': '233',
  \ 'guifg': s:color(c, 'gray4'),
  \ 'guibg': s:color(c, 'gray1'),
  \})

  call s:highlight('ActiveStatusLine3', {
  \ 'ctermfg': '238',
  \ 'ctermbg': '233',
  \ 'guifg': s:color(c, 'gray3'),
  \ 'guibg': s:color(c, 'gray1'),
  \})

  call s:highlight('InactiveStatusLine1', {
  \ 'ctermfg': '232',
  \ 'ctermbg': '238',
  \ 'cterm': 'bold',
  \ 'guifg': s:color(c, 'black'),
  \ 'guibg': s:color(c, 'gray1'),
  \ 'gui': 'bold',
  \})

  call s:highlight('InactiveStatusLine2', {
  \ 'ctermfg': '248',
  \ 'ctermbg': '238',
  \ 'guifg': s:color(c, 'gray4'),
  \ 'guibg': s:color(c, 'gray1'),
  \})

  call s:highlight('InactiveStatusLine3', {
  \ 'ctermfg': '238',
  \ 'ctermbg': '233',
  \ 'guifg': s:color(c, 'gray3'),
  \ 'guibg': s:color(c, 'gray1'),
  \})

  call s:highlight('StatusLineFill', {
  \ 'ctermfg': '233',
  \ 'ctermbg': '233',
  \ 'guifg': s:color(c, 'gray2'),
  \ 'guibg': s:color(c, 'gray1'),
  \})
endf

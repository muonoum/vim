func! StatusLine(hl, left, right, ...)
  let space = get(a:, 1, 1)
  let spacing = join(map(range(1,space), '" "'), '')

  let left = join(filter(a:left, '!empty(v:val)'), spacing)
  let right = join(filter(a:right, '!empty(v:val)'), spacing)
  return join([left, '%#' . a:hl . '#%=%*', right], '')
endf

func! StatusComponent(hl, ...)
  let value = get(a:, 1, 0)
  let pad = get(a:, 2, 0)
  let padding = join(map(range(1, pad), '" "'), '')

  return empty(value) ? '' : '%#' . a:hl . '#' . padding . value . padding . '%*'
endf

func! StatusLinePath()
  let path = pathshorten(expand('%:f'))
  if empty(path) | return '[No Name]' | endif
  return path
endf

func! StatusLineActive()
  let a = StatusComponent('ActiveStatusLine1', '%.30{StatusLinePath()}%h%w%m%r', 1)
  let b = StatusComponent('ActiveStatusLine2', '%.30{FugitiveHead()}')
  let c = StatusComponent('ActiveStatusLine3', ' ')

  let x = StatusComponent('ActiveStatusLine3', '%{&enc}')
  let y = StatusComponent('ActiveStatusLine2', '%{&filetype}')
  let z = StatusComponent('ActiveStatusLine1', '%4P %3l:%-2c', 1)

  return StatusLine('StatusLineFill', [a, b, c], [x, y, z], 2)
endf

func! StatusLineInactive()
  let a = StatusComponent('InactiveStatusLine1', '')
  let b = StatusComponent('InactiveStatusLine2', '')
  let c = StatusComponent('InactiveStatusLine3', '%.30t%h%w%m%r', 1)

  let x = StatusComponent('InactiveStatusLine3', '%3l:%-2c', 1)
  let y = StatusComponent('InactiveStatusLine2', '')
  let z = StatusComponent('InactiveStatusLine1', '')

  return StatusLine('StatusLineFill', [a, b, c], [x, y, z], 1)
endf

augroup SetStatusline
  autocmd!
  autocmd WinEnter * :setlocal statusline=%!StatusLineActive()
  autocmd WinLeave * :setlocal statusline=%!StatusLineInactive()
augroup END

set statusline=%!StatusLineActive()

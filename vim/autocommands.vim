augroup vimrc
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
  autocmd BufWritePre * let w:v = winsaveview() | silent! v/\_s*\S/d | call winrestview(w:v)
  autocmd CursorHold * echo
  autocmd FileType * setlocal formatoptions-=cro
  autocmd FileType * setlocal nocursorline
augroup END

if exists('##TermOpen') && exists('##TermClose')
  augroup terminal_events
    autocmd!
    autocmd TermOpen term://* startinsert
    autocmd TermClose term://* Sayonara
  augroup END
endif

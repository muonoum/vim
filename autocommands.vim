augroup vimrc
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
  autocmd BufWritePre * silent! v/\_s*\S/d
  autocmd FileType * setlocal formatoptions-=cro
  autocmd FileType * setlocal nocursorline
  autocmd TermOpen term://* startinsert
  autocmd TermClose term://* Sayonara
  autocmd CursorHold * echo
  autocmd FileType which_key set laststatus=0 showmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

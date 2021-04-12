augroup vimrc
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
  autocmd BufWritePre * let w:v = winsaveview() | silent! v/\_s*\S/d | call winrestview(w:v)
  autocmd CursorHold * echo
  autocmd FileType * setlocal formatoptions-=cro
  autocmd FileType * setlocal nocursorline
  autocmd InsertLeave * silent! set nopaste
augroup END

if exists('##TermOpen') && exists('##TermClose')
  augroup terminal_events
    autocmd!
    autocmd TermOpen term://* if &ft != 'floaterm' | startinsert | endif
    autocmd TermClose term://* if &ft != 'floaterm' | Sayonara | endif
  augroup END
endif

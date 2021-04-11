command! W w
command! Q q
command! WQ wq
command! Wq wq

nnoremap <c-s> :update<cr>
nnoremap Q <nop>
noremap <S-k> k
nnoremap <c-j> <c-w>w
nnoremap <c-k> <c-w>W
nnoremap <cr> <esc>
vnoremap <cr> <esc>gV
onoremap <cr> <esc>
inoremap <cr> <esc>`^
xnoremap p pgvy
xnoremap P Pgvy

if exists(':tnoremap')
  tnoremap <Esc> <C-\><C-n>
  " tnoremap <C-v><Esc> <Esc>
endif

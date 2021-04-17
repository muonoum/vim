if exists(':tnoremap')
  tnoremap <Esc> <C-\><C-n>
  " tnoremap <C-v><Esc> <Esc>
endif

function! s:vsearch(cmd)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmd.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

xnoremap * :<C-u>call <SID>vsearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>vsearch('?')<CR>?<C-R>=@/<CR><CR>

command! W w
command! Q q
command! WQ wq
command! Wq wq

nnoremap Y y$

noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

nnoremap <c-s> :update<cr>
nnoremap Q <nop>
noremap <S-k> k
nnoremap <c-j> <c-w>w
nnoremap <c-k> <c-w>W

" nnoremap K :m .-2<CR>==
" nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

nnoremap <cr> <esc>
vnoremap <cr> <esc>gV
onoremap <cr> <esc>
inoremap <cr> <esc>`^

xnoremap p pgvy
xnoremap P Pgvy
noremap x "_x
noremap X "_x
vmap y ygv<Esc>

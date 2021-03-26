set nocompatible
syntax on
filetype plugin indent on
set t_Co=256

let os=trim(system("uname -s"))
let arch=trim(system("uname -m"))
let $PATH .= ":bin-" . os . "-" . arch
let @/=''
let mapleader=','

"""

let g:golden_ratio_autocommand = 0
packadd golden-ratio
nmap <silent> <leader>, <Plug>(golden_ratio_resize)
nmap <silent> <leader>. <C-w><Bar><C-w>_
if &diff | let g:loaded_golden_ratio=0 | endif

"""

packadd fzf
packadd fzf.vim
let g:fzf_layout={ 'down': '40%' }
nmap <leader>f :Files<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>c :Colors<cr>

"""

let g:gruvbox_contrast_dark='hard'
set background=dark
color gruvbox
highlight Normal ctermbg=black
highlight VertSplit ctermfg=235 ctermbg=none

"""

packadd lightline

packadd vim-commentary
packadd vim-repeat
packadd vim-surround
packadd vim-unimpaired
packadd vim-vinegar

"""

packadd vim-fugitive
nmap <silent> <leader>g :vertical Git<cr>

"""

let &showbreak='» '

command! W w
command! Q q
command! WQ wq
command! Wq wq
nmap Q <nop>
map <S-k> k

nmap <leader>j %! jq .<cr>
vmap <leader>64 c<c-r>=system('base64 --decode', @")<cr><esc>

nmap <leader>w :set wrap!<cr>
nmap <leader>o :only<cr>
nmap <space> :nohlsearch<bar>:echo<cr>

nmap <c-j> <c-w>w
nmap <c-k> <c-w>W

nnoremap <cr> <esc>
vnoremap <cr> <esc>gV
onoremap <cr> <esc>
inoremap <cr> <esc>`^

xnoremap p pgvy

autocmd BufWritePre * %s/\s\+$//e

set backspace=indent,eol,start
set breakindent
set cpoptions+=n$
set expandtab
set hlsearch
set ignorecase smartcase
set incsearch
set laststatus=2
set nolist
set nowrap
set scrolloff=1 sidescrolloff=2
set shortmess=filnxtToOI
set showcmd
set smarttab tabstop=4 softtabstop=4 shiftwidth=4
set splitright splitbelow
set virtualedit=
set virtualedit=all
set wrapscan

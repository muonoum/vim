let g:mapleader = "\<space>"
let g:vimsyn_embed= 'l'
let &showbreak="» "
let &undodir = stdpath('data').'/undo'
let @/ = ""

"""

syntax on
filetype plugin indent on

"""

lua <<end
  require 'config.leader'
end

"""

augroup highlights
  autocmd!
  autocmd ColorScheme * lua require'config.highlights'()
augroup END

" colorscheme iceberg
colorscheme gruvbox
set background=dark

"""

augroup vimrc
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
  autocmd BufWritePre * v/\_s*\S/d
  autocmd FileType * setlocal formatoptions-=cro
  autocmd FileType * setlocal nocursorline
  autocmd TermOpen term://* startinsert
  autocmd TermClose term://* Sayonara
  autocmd CursorHold * echo
augroup END

"""

set mouse=a
set autoread
set backspace=indent,eol,start
set expandtab smarttab tabstop=2 softtabstop=2 shiftwidth=2
set formatoptions+=j
set hidden
set incsearch ignorecase smartcase hlsearch wrapscan
set lazyredraw
set nolist
set nowrap linebreak breakindent
set ruler noshowcmd noshowmode laststatus=2
set scrolloff=1 sidescrolloff=2
set shortmess=filnxtToOIc
set splitright splitbelow
set termguicolors
set textwidth=0 wrapmargin=0
set undofile noswapfile
set updatetime=2500 timeoutlen=500
set winwidth=5 winminwidth=5 winheight=1 winminheight=1

"""

map - :lua require'junkbox.telescope'.file_browser()<cr>

command! W w
command! Q q
command! WQ wq
command! Wq wq

command! -nargs=1 OtherBufDo  lua require'junkbox.util'.otherbufdo(<f-args>)
command! -nargs=1 HiddenBufDo lua require'junkbox.util'.hiddenbufdo(<f-args>)

tnoremap <Esc> <C-\><C-n>

nmap <c-s> :update<cr>

nmap Q <nop>
map <S-k> k

nmap <c-j> <c-w>w
nmap <c-k> <c-w>W

nnoremap <cr> <esc>
vnoremap <cr> <esc>gV
onoremap <cr> <esc>
inoremap <cr> <esc>`^

xnoremap p pgvy
xnoremap P Pgvy

set nocompatible
syntax on
filetype plugin indent on
set t_Co=256
let @/ = ""

let g:mapleader = "\<space>"
let g:vimsyn_embed= 'l'
let &showbreak="» "

"""

lua <<end
  require 'plugin'
  require 'plugin.clever-f'
  require 'plugin.compe'
  require 'plugin.fzf'
  require 'plugin.golden-ratio'
  require 'plugin.lightline'
  require 'plugin.lsp'
  require 'plugin.treesitter'
  require 'plugin.undo-tree'
  require 'plugin.vim-go'
  require 'plugin.vim-which-key'
  require 'leader'
end

"""

let g:gruvbox_contrast_dark = 'hard'
set background=dark
color gruvbox
highlight Normal ctermbg=black
highlight VertSplit guifg=#333333 guibg=NONE ctermfg=235 ctermbg=NONE
highlight StatusLine guifg=NONE guibg=NONE cterm=NONE ctermbg=NONE
highlight StatusLineNC guifg=NONE guibg=NONE cterm=NONE ctermbg=NONE

"""

augroup vimrc
  autocmd!
  autocmd BufWritePre * %s/\s\+$//e
  autocmd BufWritePre * v/\_s*\S/d
  autocmd FileType * setlocal formatoptions-=cro
  autocmd FileType * setlocal nocursorline
  autocmd TermOpen term://* startinsert
  autocmd TermClose term://* close
  autocmd FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

"""

set backspace=indent,eol,start
set breakindent
set cpoptions+=n$
set expandtab
set hidden
set hlsearch
set ignorecase smartcase
set incsearch
set laststatus=2
set lazyredraw
set nolist
set noshowcmd
set noshowmode
set noswapfile
set nowrap
set ruler
set scrolloff=1 sidescrolloff=2
set shortmess=filnxtToOI
set smarttab tabstop=2 softtabstop=2 shiftwidth=2
set splitright splitbelow
set textwidth=0 wrapmargin=0
set timeoutlen=500
set winwidth=5 winminwidth=5 winheight=1 winminheight=1
set wrapscan

"""

tnoremap <Esc> <C-\><C-n>

command! W w
command! Q q
command! WQ wq
command! Wq wq

nmap Q <nop>
map <S-k> k

nmap <c-j> <c-w>w
nmap <c-k> <c-w>W

nnoremap J mzJ`z

nnoremap <cr> <esc>
vnoremap <cr> <esc>gV
onoremap <cr> <esc>
inoremap <cr> <esc>`^

xnoremap p pgvy

" nmap <leader>j %! jq .<cr>
" vmap <leader>64 c<c-r>=system('base64 --decode', @")<cr><esc>

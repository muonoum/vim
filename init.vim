syntax on
filetype plugin indent on

let @/ = ""
let g:mapleader = "\<space>"
let g:vimsyn_embed= 'l'
let &showbreak="» "
let &undodir = stdpath('data').'/undo'

"""

lua <<end
  require 'config.leader'
end

"""

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox
set background=dark

"""

highlight Normal guibg=none
highlight VertSplit guibg=#101010 guifg=#101010
highlight StatusLineNC guifg=#101010
highlight StatusLine guifg=#101010

highlight TelescopeBorder guifg=#555555
highlight TelescopePromptBorder guifg=#555555
highlight TelescopeResultsBorder guifg=#555555
highlight TelescopePreviewBorder guifg=#555555
highlight TelescopePromptPrefix guifg=#555555

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
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
  autocmd CursorHold * echo
  autocmd BufWritePost packer.lua PackerCompile
augroup END

"""

" set noequalalways
" set winminheight=5 winheight=9999 helpheight=9999
" set winminwidth=10 winwidth=9999

" set statusline=%!v:lua.statusline()
" set statusline=%!v:lua.build_status_line()
" highlight StatusLine guifg=#101010 guibg=#888888
" highlight StatusLineNC guifg=#101010 guibg=#888888

set autoread
set backspace=indent,eol,start
set breakindent
set expandtab
set formatoptions+=j
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
set shortmess+=c
set shortmess=filnxtToOI
set smarttab tabstop=2 softtabstop=2 shiftwidth=2
set splitright splitbelow
set termguicolors
set textwidth=0 wrapmargin=0
set timeoutlen=500
set undofile
set updatetime=2500
set winwidth=5 winminwidth=5 winheight=1 winminheight=1
set wrapscan

"""

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

tnoremap <Esc> <C-\><C-n>

nmap <c-s> :update<cr>

command! W w
command! Q q
command! WQ wq
command! Wq wq

nmap Q <nop>
map <S-k> k

nmap <c-j> <c-w>w
nmap <c-k> <c-w>W

nnoremap <cr> <esc>
vnoremap <cr> <esc>gV
onoremap <cr> <esc>
inoremap <cr> <esc>`^

xnoremap p pgvy

" nmap <leader>j %! jq .<cr>
" vmap <leader>64 c<c-r>=system('base64 --decode', @")<cr><esc>

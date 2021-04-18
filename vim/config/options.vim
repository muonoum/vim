let &showbreak = '» '
let @/ = ""
let netrw_cursor = 0
let vimsyn_embed =  'l'
let &undodir = has('nvim') ? stdpath('data') . '/undo' : expand('~') . '/.vim/undo'
silent call system('mkdir -p ' . &undodir)

" set inccommand=nosplit

set autoread
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set diffopt+=foldcolumn:0
set expandtab smarttab tabstop=4 softtabstop=2 shiftwidth=2 shiftround
set foldmethod=indent nofoldenable
set formatoptions+=j
set hidden
set incsearch ignorecase smartcase hlsearch wrapscan
set lazyredraw
set list listchars=tab:⍿·,trail:· " eol:¬
set nocursorline
set nomodeline
set showcmd showmode noruler laststatus=2
set nowrap linebreak breakindent
set scrolloff=1 sidescrolloff=2
set shortmess=filnxtToOIc
set splitright splitbelow
set textwidth=0 wrapmargin=0
set undofile
set updatetime=2500 timeoutlen=500
set winwidth=5 winminwidth=5 winheight=1 winminheight=1

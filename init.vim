set nocompatible
filetype plugin indent on
syntax on

let &showbreak = '>> '
let &undodir = stdpath('data').'/undo'
let @/ = ""
let netrw_cursor = 0
let vimsyn_embed =  'l'

lua require 'config.leader'
runtime statusline.vim
runtime options.vim
runtime colorscheme.vim
runtime maps.vim
runtime commands.vim
runtime autocommands.vim

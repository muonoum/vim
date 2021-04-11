set nocompatible
filetype plugin indent on
syntax on

runtime pack/plugins/start/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

let arch = trim(system('uname -m'))
let os = trim(system('uname -s'))
let bin = printf('%s/.vim/bin-%s-%s', expand('~'), os, arch)
if isdirectory(bin) && stridx($PATH, bin) == -1
  let $PATH .= ':' . bin
endif

runtime! vim/*.vim
runtime! after/**/*.vim

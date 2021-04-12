set nocompatible
filetype plugin indent on
syntax on

runtime pack/plugins/start/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

func! Chomp(str)
  return substitute(a:str, '\n\+$', '', '')
endf

let arch = substitute(tolower(Chomp(system('uname -m'))), '_', '-', 'g')
let os = tolower(Chomp(system('uname -s')))
let bin = printf('%s/.vim/bin/%s-%s', expand('~'), os, arch)
if isdirectory(bin) && stridx($PATH, bin) == -1
  let $PATH .= ':' . bin
endif

runtime! vim/**/*.vim
runtime! after/**/*.vim

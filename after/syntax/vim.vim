let b:current_syntax = "vim"

syntax match vimCommand "\vruntime!?\s+.+" contains=vimRuntimePath
syntax match vimRuntimePath "\vruntime!?\s+\zs.+\ze" contained
highlight link vimRuntimePath Constant

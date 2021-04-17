" TODO https://vim.fandom.com/wiki/Creating_your_own_syntax_files

if exists('b:current_syntax') | finish | end
let b:current_syntax = 'prefix_guide'

syntax match prefixGuidePrefix "\v(^| )[^ ] "
syntax match prefixGuideGroup "\v\+[^ ]+"
syntax match prefixGuideCommand "\v:[^ ]+" contains=prefixGuideKey
syntax match prefixGuideKey "\v\<[^>]+\>"

highlight link prefixGuidePrefix Function
highlight link prefixGuideGroup Operator
highlight link prefixGuideCommand Identifier
highlight link prefixGuideKey Special

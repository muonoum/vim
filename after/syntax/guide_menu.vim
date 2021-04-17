" TODO https://vim.fandom.com/wiki/Creating_your_own_syntax_files

if exists('b:current_syntax') | finish | end
let b:current_syntax = 'guide_menu'

syntax match guideMenuPrefix "\v(^| )[^ ] "
syntax match guideMenuGroup "\v\+[^ ]+"
syntax match guideMenuCommand "\v:[^ ]+" contains=guideMenuKey
syntax match guideMenuKey "\v\<[^>]+\>"

highlight link guideMenuPrefix Function
highlight link guideMenuGroup Operator
highlight link guideMenuCommand Identifier
highlight link guideMenuKey Special

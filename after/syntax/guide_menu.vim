" TODO https://vim.fandom.com/wiki/Creating_your_own_syntax_files

if exists('b:current_syntax') | finish | end
let b:current_syntax = 'guide_menu'

syntax match guideMenuKey "\v^[^ ]+"
syntax match guideMenuGroup "\v\+group\<[^>]\>"
syntax match guideMenuCommand "\v:\%?[a-zA-Z]+"
syntax match guideMenuCombo "\v\<[^>]+\>"

highlight link guideMenuKey Function
highlight link guideMenuGroup Operator
highlight link guideMenuCommand Identifier
highlight link guideMenuCombo Special

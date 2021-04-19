" TODO https://vim.fandom.com/wiki/Creating_your_own_syntax_files

syntax include @lua syntax/lua.vim

" if exists('b:current_syntax') | finish | end
" let b:current_syntax = 'prefix_guide'

syntax match prefixGuidePrefix "\v(^| )[^ ] "
syntax match prefixGuideGroup "\v\+[^ ]+"
syntax match prefixGuideCommand "\v:[^ ]+" contains=prefixGuideKey
syntax match prefixGuideKey "\v\<[^>]+\>"
syntax match prefixGuideCommand "\c\v\<cmd\>[^ <]+" contains=prefixGuideKey
syntax match prefixGuideEnvironment "\c\v\$[a-z]+"
syntax region luaCode start='\v:lua ' keepend end='\v(\<[^>]+\>|$)' contains=prefixGuideCommand,prefixGuideKey,@lua
syntax match prefixMeta '¬'

highlight link prefixGuidePrefix Typedef
highlight link prefixGuideGroup Identifier
highlight link prefixGuideCommand Define
highlight link prefixGuideKey Special
highlight link prefixGuideEnvironment Constant
highlight link prefixGuidePrompt Keyword
highlight link prefixMeta NonText

highlight prefixGuideInput guifg=#a39a89

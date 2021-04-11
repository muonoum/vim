let lion_squeeze_spaces = 1
if &diff | let g:loaded_golden_ratio = 0 | endif
let fzf_layout = { 'down': '40%' }
command! -bang -nargs=* Grep call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

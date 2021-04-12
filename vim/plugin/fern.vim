" TODO: Breaks in vim

let g:fern#renderer#default#leaf_symbol = ''
let g:fern#renderer#default#collapsed_symbol = ''
let g:fern#disable_default_mappings = 1
let g:fern#disable_viewer_spinner = 1
let g:fern#scheme#file#show_absolute_path_on_root_label = 1
let g:fern#hide_cursor = 0

augroup Fern
  autocmd!
  autocmd FileType fern call s:init_fern()
augroup END

func! s:init_fern() abort
  hi SignColumn guibg=none
  hi CursorLine guibg=none
  hi FernRootText guifg=#3c3836 guibg=none gui=bold
  hi FernBranchText guifg=#83a598 gui=bold
  hi FernLeafText guifg=#ebdbb2

  setlocal nocursorline

  nmap <buffer> <expr>
  \ <Plug>(fern-my-open-or-enter)
  \ fern#smart#leaf(
  \   "\<Plug>(fern-action-open)",
  \   "\<Plug>(fern-action-enter)",
  \ )

  nmap <buffer> <CR>  <Plug>(fern-my-open-or-enter)
  nmap <buffer> -     <Plug>(fern-action-leave)
  nmap <buffer> <c-l> <Plug>(fern-action-reload)
  nmap <buffer> e     <Plug>(fern-action-open:split)
  nmap <buffer> h     <Plug>(fern-action-hidden-toggle)
  nmap <buffer> n     <Plug>(fern-action-new-path)
  nmap <buffer> r     <Plug>(fern-action-rename)
  nmap <buffer> s     <Plug>(fern-action-open:select)
  nmap <buffer> v     <Plug>(fern-action-open:vsplit)
endf

augroup set_highlights
  autocmd!
  if has('nvim')
    autocmd ColorScheme * lua require'config.highlights'()
  else
    runtime vim/config/highlights.vim
    autocmd ColorScheme * call Highlights()
  endif
augroup END

if has('termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set t_Co=256
set background=dark
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox8_hard

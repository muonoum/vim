vim.g.buftabline_show = 2
vim.g.buftabline_numbers = 0
vim.g.buftabline_indicators = 1

vim.api.nvim_exec([[
  highlight TabLineFill guifg=#000000  guibg=#444444
  highlight TabLine guifg=#000000 guibg=#444444
  " highlight TabLineSel guifg=#83a598 guibg=#000000 gui=bold
  highlight TabLineSel guibg=#928374 guifg=#000000 gui=bold
  highlight BufTabLineActive guifg=#666666 guibg=#222222
  highlight BufTabLineHidden guibg=#000000 guifg=#444444
]], false)

local cmd = vim.cmd
local g, o = vim.g, vim.o
local util = require('junkbox.util')

g.mapleader = ' '

local disabled_plugins = { }
for i = 1, #disabled_plugins do
  g['loaded_' .. disabled_plugins[i]] = 1
end

o.termguicolors = true
g.gruvbox_contrast_dark = 'hard'
cmd 'colorscheme gruvbox'
o.background = 'dark'

local highlight = function(args)
  local name = table.remove(args, 1)
  local attrs = {}
  for k, v in pairs(args) do
    table.insert(attrs, string.format('%s=%s', k, v))
  end

  local hl = string.format("highlight %s %s",
    name, table.concat(args, ' ')
  )

  vim.cmd(hl)
end

highlight{'Normal', guibg='#ff0000'}
highlight{'VertSplit', guibg='#101010', guifg='#101010'}

cmd [[highlight Normal guibg=none]]
cmd [[highlight VertSplit guibg=#101010 guifg=#101010]]
cmd [[highlight StatusLineNC guifg=#101010]]
cmd [[highlight StatusLine guifg=#101010]]

o.mouse = 'a'

o.autoread = true
o.backspace = 'indent,eol,start'
o.hidden = true
o.lazyredraw = true
o.list = false

o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.wrapscan = true

o.wrap = false
o.linebreak = true
o.breakindent = true

o.ruler = true
o.showcmd = false
o.showmode = false
o.laststatus = 2

o.scrolloff = 1
o.sidescrolloff = 2

o.shortmess = 'filnxtToOIc'

o.formatoptions = 'jql'

o.splitright = true
o.splitbelow = true

o.textwidth = 0
o.wrapmargin = 0

o.undofile = true
o.swapfile = false

o.updatetime = 2500
o.timeoutlen = 500

o.winwidth = 5
o.winminwidth = 5
o.winheight = 1
o.winminheight = 1

o.expandtab = true
o.smarttab = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

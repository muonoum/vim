local treesitter = require 'nvim-treesitter.configs'

treesitter.setup {
  ensure_installed = {'bash', 'go', 'elm', 'json', 'lua', 'yaml'},
  highlight = { enabled = true },
  indent = { enabled = true },
}

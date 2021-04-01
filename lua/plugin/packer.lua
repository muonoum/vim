vim.cmd 'packadd packer.nvim'

return require('packer').startup(function()
  use {
    'wbthomason/packer.nvim',
    cmd = { 'PackerClean', 'PackerCompile', 'PackerInstall', 'PackerStatus', 'PackerSync', 'PackerUpdate' },
    opt = true,
    config = function() require('plugin.packer') end,
  }

  use {
    'dstein64/vim-startuptime',
    cmd = { 'StartupTime' }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require('plugin.treesitter') end,
    run = function() vim.cmd('TSUpdate') end,
  }

  use {
    'numToStr/FTerm.nvim',
    config = function() require 'plugin.fterm' end,
    cmd = { 'FTermOpen', 'FTermClose', 'FTermToggle' },
    keys = { {'n', '<C-t>'}, {'t', '<C-t>'} },
  }

  use {
    'psliwka/vim-smoothie',
    config = function() require 'plugin.smoothie' end,
  }

  use {
    'fatih/vim-go',
    ft = { 'go' },
    config = function() require 'plugin.go' end,
  }

  use {
    'hrsh7th/nvim-compe',
    config = function() require 'plugin.compe' end,
  }

  use {
    'hoob3rt/lualine.nvim',
    config = function() require 'plugin.lualine' end,
  }

  use {
    'liuchengxu/vim-which-key',
    config = function() require 'plugin.which-key' end,
  }

  use {
    'mbbill/undotree',
    config = function() require 'plugin.undo-tree' end,
    cmd = { 'UndotreeToggle', 'UndotreeShow', 'UndotreeHide', 'UndotreeFocus' },
  }

  use {
    'neovim/nvim-lspconfig',
    config = function() require 'plugin.lspconfig' end,
  }

  use {
    'rhysd/clever-f.vim',
    config = function() require 'plugin.clever-f' end,
  }

  use 'romainl/vim-cool'

  use {
    'spektroskop/golden-ratio',
    config = function() require 'plugin.golden-ratio' end,
  }

  use {
    'sheerun/vim-polyglot',
    config = function() require 'plugin.polyglot' end,
  }

  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-vinegar'

  use {
    'npxbr/gruvbox.nvim',
    requires = { 'rktjmp/lush.nvim' },
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' },
    config = function() require('plugin.telescope') end,
  }
end)

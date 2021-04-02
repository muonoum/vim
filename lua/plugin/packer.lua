return require('packer').startup(function()
  use {
    'wbthomason/packer.nvim',
    opt = true,
    config = function() require('plugin.packer') end,
    cmd = {
      'PackerClean',
      'PackerCompile',
      'PackerInstall',
      'PackerStatus',
      'PackerSync',
      'PackerUpdate'
    },
  }

  use {
    'mhinz/vim-sayonara',
    cmd = 'Sayonara'
  }

  use {
    'dstein64/vim-startuptime',
    cmd = { 'StartupTime' },
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require('plugin.treesitter') end,
    run = function() vim.cmd('TSUpdate') end,
  }

  use {
    'psliwka/vim-smoothie',
    config = function() require('plugin.smoothie') end,
  }

  use {
    'fatih/vim-go',
    ft = { 'go' },
    config = function() require('plugin.go') end,
  }

  use {
    'hrsh7th/nvim-compe',
    config = function() require('plugin.compe') end,
  }

  use {
    'hoob3rt/lualine.nvim',
    config = function() require('plugin.lualine') end,
  }

  use {
    'liuchengxu/vim-which-key',
    config = function() require('plugin.which-key') end,
  }

  use {
    'neovim/nvim-lspconfig',
    config = function() require('plugin.lspconfig') end,
  }

  use 'romainl/vim-cool'

  use {
    'spektroskop/golden-ratio',
    config = function() require('plugin.golden-ratio') end,
  }

  use {
    'sheerun/vim-polyglot',
    config = function() require('plugin.polyglot') end,
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

  use {
    'ap/vim-buftabline',
    disable = false,
    config = function() require('plugin.buftabline') end,
  }

  use {
    -- 'ap/vim-readdir',
    'spektroskop/vim-readdir',
    disable = false,
    config = function()
      vim.g.loaded_netrwPlugin = 1
      vim.cmd [[highlight Directory guifg=#83a598]]
    end
  }
end)

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

  use { 'mhinz/vim-sayonara', cmd = 'Sayonara' }

  use { 'dstein64/vim-startuptime', cmd = 'StartupTime' }

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
    'spektroskop/buftabline.nvim',
    branch = 'highlight-hidden',
    config = function()
      vim.cmd [[highlight TabLineFill guifg=#000000  guibg=#444444]]
      vim.cmd [[highlight TabLine guifg=#222222 guibg=#666666]]
      vim.cmd [[highlight TabLineSel guibg=#928374 guifg=#000000 gui=bold]]

      require("buftabline").setup{
        go_to_maps = true,
        kill_maps = true,
        highlight_hidden = true,
        hlgroup_current = 'TabLineSel',
        hlgroup_normal = 'TabLine',
        hlgroup_hidden = 'TabLineFill',
      }
    end,
  }
end)

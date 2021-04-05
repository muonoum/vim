return require('packer').startup(
  function(use)
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
      'spektroskop/golden-ratio',
      config = function() require('plugin.golden-ratio') end,
      branch = 'skip-neovim-floating-windows',
    }

    use {
      'spektroskop/buftabline.nvim',
      config = function() require('plugin.buftabline') end,
      branch = 'highlight-hidden',
    }

    use { 'dstein64/vim-startuptime',
      cmd = 'StartupTime',
    }

    use { 'fatih/vim-go',
      ft = { 'go' },
      config = function() require('plugin.go') end,
    }

    use { 'hoob3rt/lualine.nvim',
      config = function() require('plugin.lualine') end,
    }

    use { 'hrsh7th/nvim-compe',
      config = function() require('plugin.compe') end,
    }

    use { 'liuchengxu/vim-which-key',
      config = function() require('plugin.which-key') end,
    }

    use { 'mhinz/vim-sayonara', cmd = 'Sayonara' }

    use { 'neovim/nvim-lspconfig',
      config = function() require('plugin.lspconfig') end,
    }

    use { 'cocopon/iceberg.vim' }

    use { 'gruvbox-community/gruvbox',
      config = function()
        vim.g.gruvbox_contrast_dark = 'hard'
        vim.g.gruvbox_contrast_light = 'hard'
      end,
    }

    use { 'npxbr/gruvbox.nvim',
      requires = { 'rktjmp/lush.nvim' },
      disable = true,
      config = function()
        vim.g.gruvbox_contrast_dark = 'hard'
        vim.g.gruvbox_contrast_light = 'hard'
      end,
    }

    use { 'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' },
      config = function() require('plugin.telescope') end,
    }

    use { 'nvim-treesitter/nvim-treesitter',
      config = function() require('plugin.treesitter') end,
      run = function() vim.cmd('TSUpdate') end,
    }

    use { 'psliwka/vim-smoothie',
      config = function() require('plugin.smoothie') end,
    }

    use { 'romainl/vim-cool' }

    use { 'sheerun/vim-polyglot',
      config = function() require('plugin.polyglot') end,
    }

    use { 'norcalli/nvim-colorizer.lua',
      config = function() require'colorizer'.setup() end,
    }

    use { 'rafcamlet/nvim-luapad',
      cmd = { 'Luapad' }
    }

    use { 'tpope/vim-commentary' }
    use { 'tpope/vim-fugitive' }
    use { 'tpope/vim-repeat' }
    use { 'tpope/vim-surround' }
    use { 'tpope/vim-unimpaired' }
    use { 'tpope/vim-vinegar' }
  end
)

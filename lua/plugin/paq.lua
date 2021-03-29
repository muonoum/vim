vim.cmd 'packadd paq-nvim'

local paq = require'paq-nvim'.paq

paq {'savq/paq-nvim', opt = true}

paq {
  'nvim-treesitter/nvim-treesitter',
  run = function() vim.cmd 'TSUpdate' end
}

paq 'fatih/vim-go'
paq 'hrsh7th/nvim-compe'
paq 'itchyny/lightline.vim'
paq 'junegunn/fzf'
paq 'junegunn/fzf.vim'
paq 'liuchengxu/vim-which-key'
paq 'mbbill/undotree'
paq 'morhetz/gruvbox'
paq 'neovim/nvim-lspconfig'
paq 'rhysd/clever-f.vim'
paq 'romainl/vim-cool'
paq 'roman/golden-ratio'
paq 'sheerun/vim-polyglot'
paq 'tpope/vim-commentary'
paq 'tpope/vim-fugitive'
paq 'tpope/vim-repeat'
paq 'tpope/vim-surround'
paq 'tpope/vim-unimpaired'
paq 'tpope/vim-vinegar'

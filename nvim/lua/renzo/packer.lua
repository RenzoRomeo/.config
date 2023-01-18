vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  use {
    'nvim-telescope/telescope.nvim', tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      -- Snippet Collection (Optional)
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require('lspsaga').setup({
      })
    end,
  })

  use("github/copilot.vim")

  -- Editor Plugins
  use("preservim/nerdtree")
  use("ryanoasis/vim-devicons")
  use("vim-airline/vim-airline")
  use("MaxMEllon/vim-jsx-pretty")
  use("theprimeagen/harpoon")
  use("tpope/vim-fugitive")
  use("tpope/vim-surround")
  use("tpope/vim-commentary")
  use("jose-elias-alvarez/null-ls.nvim")
  use("MunifTanjim/prettier.nvim")
  use("mbbill/undotree")
  use("lewis6991/gitsigns.nvim")
  use("nvim-lua/plenary.nvim")
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- Colorscheme
  use("morhetz/gruvbox")

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
end)


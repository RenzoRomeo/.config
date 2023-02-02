vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim") -- Packer

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require('lspsaga').setup({})
    end,
  }) -- LSP UIs
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")

  -- Trouble
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  use("github/copilot.vim") -- Copilot for vim

  use("onsails/lspkind-nvim") -- vscode-like pictograms
  use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
  use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's buil-in LSP
  use("hrsh7th/nvim-cmp") -- Completion
  use("L3MON4D3/LuaSnip") -- Snippets
  use("vim-airline/vim-airline") -- Status Line
  use("theprimeagen/harpoon") -- Frecuent files

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  } -- File Explorer

  use("christoomey/vim-tmux-navigator") -- Navigator

  use("dinhhuy258/git.nvim") -- Git
  use("lewis6991/gitsigns.nvim") -- Git Signs

  use("tpope/vim-surround") -- Surround
  use("tpope/vim-commentary") -- Comment
  use("mbbill/undotree") -- Undo tree
  use("norcalli/nvim-colorizer.lua") -- Colorizer

  use("windwp/nvim-autopairs") -- Autopairs
  use("windwp/nvim-ts-autotag") -- Autotag

  use("jose-elias-alvarez/null-ls.nvim")
  use("MunifTanjim/prettier.nvim") -- Prettier

  use("nvim-lua/plenary.nvim") -- Common utilities
  use("nvim-telescope/telescope.nvim")
  use("nvim-telescope/telescope-file-browser.nvim")

  use("morhetz/gruvbox") -- Best colorscheme

  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" }) -- Treesitter
end)

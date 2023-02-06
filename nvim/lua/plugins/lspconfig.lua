return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", "<Cmd>Lspsaga hover_doc<CR>" }
    keys[#keys + 1] = { "gd", "<Cmd>Lspsaga goto_definition<CR>" }
    keys[#keys + 1] = { "gf", "<Cmd>Lspsaga lsp_finder<CR>" }
    keys[#keys + 1] = { "gr", "<Cmd>Lspsaga rename<CR>" }
    keys[#keys + 1] = { "gca", "<Cmd>Lspsaga code_action<CR>" }
  end,
}

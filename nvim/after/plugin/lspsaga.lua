local status, saga = pcall(require, "lspsaga")
if (not status) then return end

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>q', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<leader>Q', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<leader>r', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', '<leader>ca', '<Cmd>Lspsaga code_action<CR>', opts)

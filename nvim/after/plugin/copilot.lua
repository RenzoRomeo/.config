vim.g.copilot_assume_mapped = true

vim.keymap.set("i", "<Tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true})

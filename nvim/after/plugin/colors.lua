vim.cmd.colorscheme("gruvbox")
vim.g.gruvbox_contrast_dark = "hard"

-- Transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

local status, mason = pcall(require, "mason")
if (not status) then return end

local status2, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

local status3, lspconfig = pcall(require, "lspconfig")
if (not status3) then return end

mason.setup({})

mason_lspconfig.setup({
})

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      group = vim.api.nvim_create_augroup("SharedLspFormatting", { clear = true }),
      pattern = "*",
      command = "lua vim.lsp.buf.format()",
    })
  end
end

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = on_attach
    })
  end
})

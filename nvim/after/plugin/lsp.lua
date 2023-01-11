local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	"tsserver",
	"sumneko_lua",
	"rust_analyzer",
  "tailwindcss",
  "prismals"
})

lsp.setup()

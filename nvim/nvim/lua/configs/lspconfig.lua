require "configs.lsp.rust_analyzer"
require "configs.lsp.vtsls"
-- require "configs.lsp.ts_ls"
require "configs.lsp.vue_ts"

vim.lsp.enable {
	"lua_ls",
	"html",
	"cssls",
	-- "ts_ls",
	"clangd",
	"clangd",
	"tailwindcss",
	"pyright",
	"rust_analyzer",
	"vue_ls",
	"vtsls",
	"eslint",
	"astro",
	"denols",
	"dartls",
	"prettier",
	"json-lsp",
}

-- diagnostic
vim.diagnostic.config { virtual_text = false }

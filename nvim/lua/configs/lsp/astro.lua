local ts_path = "/usr/local/lib/node_modules/typescript/lib/"

vim.lsp.config("astro", {
	init_options = {
		typescript = {
			tsdk = ts_path,
		},
	},
})

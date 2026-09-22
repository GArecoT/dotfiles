local typscript = "/usr/lib/node_modules/typescript/lib/"

vim.lsp.config("astro", {
  init_options = {
    typescript = {
      tsdk = typscript,
    },
  },
})

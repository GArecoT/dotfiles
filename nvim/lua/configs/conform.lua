local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    vue = { "prettier" }
  },

  async = true,
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 60000,
    lsp_fallback = true,
  },
}

require("conform").setup(options)

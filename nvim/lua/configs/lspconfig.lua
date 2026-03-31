-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
-- capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
--
local vue_language_server_path = vim.fn.stdpath "data"
  .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

local tsserver_filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vue_language_server_path,
  languages = { "vue" },
  configNamespace = "typescript",
}
local default_config = {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

local servers = {
  { name = "html", config = default_config },
  { name = "cssls", config = default_config },
  {
    name = "vtsls",
    config = {
      settings = {
        vtsls = {
          tsserver = {
            globalPlugins = {
              vue_plugin,
            },
          },
        },
      },
      filetypes = tsserver_filetypes,
    },
  },
  {
    name = "ts_ls",
    config = {
      init_options = {
        plugins = {
          vue_plugin,
        },
      },
      filetypes = tsserver_filetypes,
    },
  },
  { name = "clangd", config = default_config },
  { name = "tailwindcss", config = default_config },
  { name = "pyright", config = default_config },
  {
    name = "rust_analyzer",
    config = {

      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { "rust" },
      settings = {
        ["rust_analyzer"] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    },
  },
  { name = "jsonls", config = default_config },
  {
    name = "vue_ls",
    config = {},
  },
  { name = "eslint", config = default_config },
  { name = "astro", config = default_config },
  { name = "denols", config = default_config },
  { name = "dartls", config = default_config },
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp.name, lsp.config)
  vim.lsp.enable(lsp.name)
end

-- diagnostic
vim.diagnostic.config { virtual_text = false }

-- Fix autofocus on signature
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
--   focusable = false,
--   relative = "cursor",
--   silent = true,
-- })
--WARNING: Checar periódicamente esse plugin pq ele não é muito popular e pode quebrar
--
-- require("typescript-tools").setup {
--   on_attach = function(client)
--     client.server_capabilities.semanticTokensProvider = false
--   end,
--   filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
--   settings = {
--     tsserver_plugins = {
--       "@vue/typescript-plugin"
--     }
--   }
-- }

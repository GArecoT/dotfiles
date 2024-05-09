-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "tailwindcss",
  "pyright",
  "rust_analyzer",
  "jsonls",
  "volar",
  "eslint",
  "astro",
  "denols",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- Custom
lspconfig.rust_analyzer.setup {
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
}
local vue_typescript_plugin = require('mason-registry')
    .get_package('vue-language-server')
    :get_install_path()
    .. '/node_modules/@vue/language-server'
    .. '/node_modules/@vue/typescript-plugin'

lspconfig.volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- lspconfig.vtsls.setup {
--   filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
--   settings = {
--     vtsls = {
--       -- autoUseWorkspaceTsdk = true,
--       tsserver = {
--         globalPlugins = {
--           {
--             name = '@vue/typescript-plugin',
--             location = vue_typescript_plugin,
--             languages = { 'vue' },
--             configNamespace = "typescript",
--             enableForWorkspaceTypeScriptVersions = true,
--           },
--         },
--       },
--     },
--   },
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
require("typescript-tools").setup {
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
  settings = {
    tsserver_plugins = {
      "@vue/typescript-plugin"
    }
  }
}

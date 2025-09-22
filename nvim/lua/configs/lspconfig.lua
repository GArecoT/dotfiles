-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
-- capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

-- local lspconfig = require "lspconfig"

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

      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
      settings = {
        vtsls = {
          -- autoUseWorkspaceTsdk = true,
          tsserver = {
            globalPlugins = {
              {
                name = "@vue/typescript-plugin",
                location = "/usr/lib/node_modules/@vue/typescript-plugin/lib/",
                languages = { "vue" },
                configNamespace = "typescript",
                enableForWorkspaceTypeScriptVersions = true,
              },
            },
          },
        },
      },
      on_attach = on_attach,
      capabilities = capabilities,
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
    config = default_config,
  },
  { name = "eslint", config = default_config },
  { name = "astro", config = default_config },
  { name = "denols", config = default_config },
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

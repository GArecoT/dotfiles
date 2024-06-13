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
local vue_typescript_plugin = require("mason-registry").get_package("vue-language-server"):get_install_path()
  .. "/node_modules/@vue/language-server"
  .. "/node_modules/@vue/typescript-plugin"

require("lspconfig").volar.setup {
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
  init_options = {
    vue = {
      hybridMode = false,
    },
    typescript = {
      -- tsdk = "/usr/lib/node_modules/typescript/lib",
    },
  },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.vtsls.setup {
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
}
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

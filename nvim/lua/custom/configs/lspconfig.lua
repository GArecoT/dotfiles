local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = util.root_pattern "Cargo.toml",
  settings = {
    ["rust_analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}
lspconfig.volar.setup{
  filetypes = {'vue', 'json'}
}
-- if you just want default config for the servers then put them in a table
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

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = require("lspconfig/util").root_pattern("package.json", ".eslintrc", ".git"), --adicionei essa coisa pro eslint. Se der merda apaga isso aqui
  }
end

--
-- lspconfig.pyright.setup { blabla}

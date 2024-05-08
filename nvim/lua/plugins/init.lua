return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp", "prettier",
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
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
      autotag = { enable = true },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      indent = { enable = true },
    },
  },


  --Custom
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "akinsho/flutter-tools.nvim",
    ft = { "flutter", "dart" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },

  {
    "toppair/peek.nvim",
    ft = { "markdown" },
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      -- refer to `configuration to change defaults`
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  {
    'andymass/vim-matchup',
    lazy = false,
  },
  {
    "VPavliashvili/json-nvim",
    ft = "json", -- only load for json filetype
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup {
        open_mapping = [[<c-\>]],
        direction = "float",
      }
    end,
    lazy = false,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript", "html", "typescript", "typescriptreact", "vue", "astro" },
  },
  {
    "f-person/git-blame.nvim",
    enabled = true,
    lazy = false,
  },
}

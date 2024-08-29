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
  -- {
  --   "hrsh7th/nvim-cmp",
  --
  --   enabled = false,
  -- },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
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
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      indent = { enable = true },
      matchup = {
        enable = true,
      },
    },
  },

  --Custom
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
    "andymass/vim-matchup",
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
    config = function()
      require("nvim-ts-autotag").setup {
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
      }
    end,
  },
  {
    "f-person/git-blame.nvim",
    enabled = true,
    lazy = false,
  },
  {
    "echasnovski/mini.indentscope",
    lazy = false,
    opts = {
      -- symbol = "▏",
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
          "nvdash",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  -- Add comments to vue files
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require "configs.comments"
    end,
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  --Noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      -- "rcarriga/nvim-notify",
    },

    config = function()
      require "configs.noice"
    end,
  },
  {
    "javiorfo/nvim-soil",

    -- Optional for puml syntax highlighting:
    dependencies = { "javiorfo/nvim-nyctophilia" },

    lazy = true,
    ft = "plantuml",
    opts = {
      -- If you want to change default configurations

      -- If you want to use Plant UML jar version instead of the install version
      -- puml_jar = "/path/to/plantuml.jar",

      -- If you want to customize the image showed when running this plugin
      image = {
        darkmode = true, -- Enable or disable darkmode
        format = "png", -- Choose between png or svg

        -- This is a default implementation of using nsxiv to open the resultant image
        -- Edit the string to use your preferred app to open the image (as if it were a command line)
        -- Some examples:
        -- return "feh " .. img
        -- return "xdg-open " .. img
        execute_to_open = function(img)
          return "nsxiv -b " .. img
        end,
      },
    },
  },
}

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
    "hrsh7th/nvim-cmp",

    -- enabled = false,
  },
  -- { import = "nvchad.blink.lazyspec" },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  -- {
  --   "saghen/blink.cmp",
  --   dependencies = { "rafamadriz/friendly-snippets" },
  --
  --   version = "1.*",
  --   ---@module 'blink.cmp'
  --   ---@type blink.cmp.Config
  --   opts = {
  --     keymap = {
  --       preset = "enter",
  --       ["<Tab>"] = { "select_next", "fallback" },
  --       ["<S-Tab>"] = { "select_prev", "fallback" },
  --     },
  --
  --     appearance = {
  --       nerd_font_variant = "mono",
  --     },
  --
  --     completion = {
  --       documentation = { auto_show = true },
  --       menu = {
  --         border = nil,
  --         draw = {
  --           treesitter = { "lsp" },
  --           columns = {
  --             { "label", "label_description" },
  --             { "kind_icon", gap = 2, "kind" },
  --           },
  --         },
  --         auto_show = function(ctx)
  --           return ctx.mode ~= "cmdline" and not vim.tbl_contains({ "/", "?" }, vim.fn.getcmdtype())
  --         end,
  --       },
  --     },
  --
  --     sources = {
  --       default = { "lsp", "path", "snippets", "buffer" },
  --     },
  --
  --     fuzzy = { implementation = "lua" },
  --   },
  --
  --   opts_extend = { "sources.default" },
  -- },

  {
    "williamboman/mason.nvim",
    opts = {
      -- ensure_installed = {
      --   "lua-language-server",
      --   "stylua",
      --   "html-lsp",
      --   "css-lsp",
      --   "prettier",
      --   "cssls",
      --   "tsserver",
      --   "clangd",
      --   "tailwindcss",
      --   "pyright",
      --   "rust_analyzer",
      --   "jsonls",
      --   "volar",
      --   "eslint",
      --   "astro",
      --   "denols",
      -- },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    -- enable = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "vue",
        "typescript",
        "javascript",
        "rust",
        "python",
        "scss",
        "sass"
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
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you use the mini.nvim suite
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
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
    priority = 7,
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
    opts = {},
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
  -- Noice
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
  { "mg979/vim-visual-multi", lazy = false },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup {
        easing = "sine",
      }
    end,
    lazy = false,
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
      require("tiny-inline-diagnostic").setup {
        virt_texts = {
          priority = 3048,
        },
      }
    end,
  },
}

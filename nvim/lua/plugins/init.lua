local gh = function(x)
  return "https://github.com/" .. x
end

require "plugins.builds.init"

vim.pack.add {
  { src = gh "nvim-tree/nvim-web-devicons" },
  { src = gh "nvim-tree/nvim-tree.lua" },
  { src = gh "stevearc/conform.nvim" },
  { src = gh "neovim/nvim-lspconfig" },
  { src = gh "rafamadriz/friendly-snippets" },
  { src = gh "saghen/blink.cmp" },
  { src = gh "hrsh7th/nvim-cmp" },
  { src = gh "windwp/nvim-autopairs" },
  { src = gh "williamboman/mason.nvim" },
  { src = gh "nvim-treesitter/nvim-treesitter", version = "main" },
  { src = gh "toppair/peek.nvim" },
  { src = gh "andymass/vim-matchup" },
  { src = gh "VPavliashvili/json-nvim" },
  { src = gh "akinsho/toggleterm.nvim" },
  { src = gh "windwp/nvim-ts-autotag" },
  { src = gh "f-person/git-blame.nvim" },
  { src = gh "echasnovski/mini.indentscope" },
  { src = gh "nvim-lua/plenary.nvim" },
  { src = gh "folke/todo-comments.nvim" },
  { src = gh "JoosepAlviste/nvim-ts-context-commentstring" },
  { src = gh "pmizio/typescript-tools.nvim" },
  { src = gh "mg979/vim-visual-multi" },
  { src = gh "karb94/neoscroll.nvim" },
  { src = gh "rachartier/tiny-inline-diagnostic.nvim" },
  { src = gh "nvim-tree/nvim-web-devicons" },
  { src = gh "lewis6991/gitsigns.nvim" },
  { src = gh "romgrk/barbar.nvim" },
  { src = gh "nvim-lualine/lualine.nvim" },
  { src = gh "nvim-telescope/telescope.nvim" },
  { src = gh "nvim-telescope/telescope-fzf-native.nvim" },
  { src = gh "rose-pine/neovim", name = "rose-pine" },
  { src = gh "catppuccin/nvim", name = "catppuccin" },
  { src = gh "wnkz/monoglow.nvim", name = "monoglow" },
}

require "configs.conform"
require "configs.lspconfig"
require "configs.lualine"
require "configs.comments"
require "configs.neoscroll"
require "configs.treesitter"
require "configs.peek"
require "configs.toggleterm"
require "configs.tiny-inline-diagnostic"
require "configs.nvim-ts-autotag"
require "configs.catppuccin"
require "configs.monoglow"
require "configs.blink"
require "configs.barbar"

require("nvim-tree").setup()
require("nvim-autopairs").setup()
require("todo-comments").setup()
require("mason").setup()
require("mini.indentscope").setup()

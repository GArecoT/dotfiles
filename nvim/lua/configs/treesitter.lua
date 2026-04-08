require("nvim-treesitter").setup {
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
    "sass",
  },
  highlight = {
    enable = true,
    --use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
  matchup = {
    enable = true,
  },
}

local langs = {
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
}
require("nvim-treesitter").setup {
  ensure_installed = langs,
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
vim.api.nvim_create_autocmd("FileType", {
  pattern = langs,
  callback = function()
    vim.treesitter.start()
  end,
})

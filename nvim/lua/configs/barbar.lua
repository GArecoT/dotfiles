vim.g.barbar_auto_setup = false -- disable auto-setup

require("barbar").setup {
  icons = {
    separator = { left = "", right = "" },
    separator_at_end = false,
    inactive = { separator = { left = "", right = "" } },
    pinned = { separator = { left = "", right = "" } },
  },
}

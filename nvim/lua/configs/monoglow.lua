require("monoglow").setup {
  -- Change the "glow" color
  on_colors = function(colors)
    colors.glow = "#cba6f7"
  end,
}
vim.cmd.colorscheme "monoglow"
vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#cba6f7", bg = "#000000" }) -- Set to red
vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" }) -- Set to red
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" }) -- Set to red
vim.api.nvim_set_hl(0, "BufferInactive", { bg = "#000000" }) -- Set to red
vim.api.nvim_set_hl(0, "BufferCurrent", { fg = "#cba6f7", bg = "#000000" })
vim.api.nvim_set_hl(0, "BufferCurrentMod", { fg = "#cba6f7", bg = "#000000" })
vim.api.nvim_set_hl(0, "BufferCurrentIndex", { fg = "#cba6f7", bg = "#000000" })
vim.api.nvim_set_hl(0, "BufferCurrentSign", { fg = "#cba6f7", bg = "#000000" })
vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "#000000" })

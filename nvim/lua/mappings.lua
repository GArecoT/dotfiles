require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--Custom
map({ "n", "i", "v" }, "<C-s>", "<cmd> vsplit <cr>", { desc = "split vertical" })
map({ "n", "i", "v" }, "<C-x>", "<cmd> split <cr>", { desc = "split horizontal" })
map({ "n", "i", "v" }, "<C-a>", "<cmd> NvimTreeToggle<cr>", { desc = "toggle tree" })

-- Buffer Line
map({ "n", "t" }, "<A-q>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "move tab right" })
map({ "n", "t" }, "<A-l>", function()
  require("nvchad.tabufline").next()
end, { desc = "move tab right" })
map({ "n", "t" }, "<A-h>", function()
  require("nvchad.tabufline").prev()
end, { desc = "move tab left" })
map({ "n", "t" }, "<A-.>", function()
  require("nvchad.tabufline").move_buf(1)
end, { desc = "move tab to right" })
map({ "n", "t" }, "<A-,>", function()
  require("nvchad.tabufline").move_buf(-1)
end, { desc = "move tab to left" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

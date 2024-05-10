require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--Custom
map({ "n" }, "<C-s>", "<cmd> vsplit <cr>", { desc = "split vertical" })
map({ "n" }, "<C-x>", "<cmd> split <cr>", { desc = "split horizontal" })
map({ "n" }, "<C-a>", "<cmd> NvimTreeToggle<cr>", { desc = "toggle tree" })
map({ "n" }, "<C-q>", "<cmd> q<cr>", { desc = "quit" })
map({ "n" }, "<leader>t", "<cmd> TodoTelescope<cr>", { desc = "quit" })
map({ "n" }, "<leader>fm", function()
  require("conform").format({ async = "true" })
end, { desc = "format file" })

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

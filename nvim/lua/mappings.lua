require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--Custom
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map({ "n" }, "<C-s>", "<cmd> vsplit <cr>", { desc = "split vertical" })
map({ "n" }, "<C-x>", "<cmd> split <cr>", { desc = "split horizontal" })
map({ "n" }, "<C-a>", "<cmd> NvimTreeToggle<cr>", { desc = "toggle tree" })
map({ "n" }, "<C-q>", "<cmd> q<cr>", { desc = "quit" })
map({ "n" }, "<leader>td", "<cmd> TodoTelescope<cr>", { desc = "quit" })
map({ "n" }, "<leader>fm", function()
  local range = nil
  require("conform").format { async = true, lsp_format = "fallback", range = range }
end, { desc = "format file" })
map({ "n" }, "<C-A-l>", "<cmd>tabnext<cr>", { desc = "quit" })
map({ "n" }, "<C-A-h>", "<cmd>tabprevious<cr>", { desc = "quit" })
map({ "n" }, "<C-A-n>", "<cmd>tabnew<cr>", { desc = "quit" })
map({ "n" }, "<C-A-q>", "<cmd>tabclose<cr>", { desc = "quit" })

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

vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

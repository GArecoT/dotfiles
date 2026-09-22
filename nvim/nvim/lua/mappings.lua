-- require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local builtin = require "telescope.builtin"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--Custom
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map({ "n" }, "<C-s>", "<cmd> vsplit <cr>", { desc = "split vertical" })
map({ "n" }, "<C-x>", "<cmd> split <cr>", { desc = "split horizontal" })
map({ "n" }, "<C-a>", "<cmd> NvimTreeToggle<cr>", { desc = "toggle tree" })
map({ "n" }, "<C-q>", "<cmd> q<cr>", { desc = "quit" })

-- TODO
map({ "n" }, "<leader>td", "<cmd> TodoTelescope<cr>", { desc = "quit" })

-- Comentário
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

--Telescope
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fw", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fo", builtin.oldfiles, { desc = "Telescope live grep" })

map({ "n" }, "<leader>fm", function()
  local range = nil
  require("conform").format { async = true, lsp_format = "fallback", range = range }
end, { desc = "format file" })
map({ "n" }, "<C-A-l>", "<cmd>tabnext<cr>", { desc = "quit" })
map({ "n" }, "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "See references lsp" })

-- Copiar todo arquivo
map({ "n" }, "<C-c>", "ggyG")

-- Tab
map({ "n" }, "<C-A-h>", "<cmd>tabprevious<cr>", { desc = "Tab prev" })
map({ "n" }, "<C-A-n>", "<cmd>tabnew<cr>", { desc = "Tab next" })
map({ "n" }, "<C-A-q>", "<cmd>tabclose<cr>", { desc = "Close tab" })

-- Buffer Line
map({ "n" }, "<A-l>", "<cmd>BufferNext<cr>", { desc = "Close tab" })
map({ "n" }, "<A-h>", "<cmd>BufferPrevious<cr>", { desc = "Close tab" })
map({ "n" }, "<A-q>", "<cmd>BufferClose<cr>", { desc = "Close tab" })
map({ "n" }, "<A-,>", "<cmd>BufferMovePrevious<cr>", { desc = "Close tab" })
map({ "n" }, "<A-.>", "<cmd>BufferMoveNext<cr>", { desc = "Close tab" })

map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top split" })

-- map("n", "<RightMouse>", function()
--   vim.cmd.exec '"normal! \\<RightMouse>"'
--
--   local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
--   require("menu").open(options, { mouse = true })
-- end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

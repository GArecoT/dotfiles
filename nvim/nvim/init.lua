vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"
require "plugins.init"
require "configs.ui2"
require "options"

vim.schedule(function()
  require "mappings"
end)

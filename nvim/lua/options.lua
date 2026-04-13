-- Smart case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Barra lateral número
vim.wo.number = true
vim.wo.relativenumber = true

-- Spelling
vim.opt.spelllang = "pt_br"

-- Tabline
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Diagnósticos
vim.diagnostic.config {
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "✘",
      [vim.diagnostic.severity.WARN] = "▲",
      [vim.diagnostic.severity.HINT] = "⚑",
      [vim.diagnostic.severity.INFO] = "»",
    },
  },
}

-- Destaque ao dar yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

local get_option = vim.filetype.get_option
vim.filetype.get_option = function(filetype, option)
  return option == "commentstring" and require("ts_context_commentstring.internal").calculate_commentstring()
    or get_option(filetype, option)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "help",
    "alpha",
    "dashboard",
    "neo-tree",
    "Trouble",
    "trouble",
    "lazy",
    "mason",
    "notify",
    "toggleterm",
    "lazyterm",
    "nvdash",
  },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})

local colors = {
  bg = "#000000",
  fg = "#F1f1f1",
  violet = "#cba6f7",
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },

  insert = { a = { fg = colors.bg, bg = colors.violet } },
  visual = { a = { fg = colors.bg, bg = colors.violet } },
  replace = { a = { fg = colors.bg, bg = colors.violet } },

  inactive = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
}

require("lualine").setup {
  options = {
    globalstatus = true,
    theme = bubbles_theme,
    component_separators = "",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_b = { "filename", "branch" },
    lualine_c = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" }, -- Usa LSP nativo
        sections = { "error", "warn", "info", "hint" },
        symbols = { error = "✘:", warn = "▲:", info = "⚑:", hint = "»:" },
        colored = true, -- Ativa cores para diagnóstico
        update_in_insert = false, -- Atualiza na inserção
        always_visible = false, -- Oculta se não houver diagnósticos
      },
    },
    lualine_x = {},
    lualine_y = { "filetype", "progress" },
  },
  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "location" },
  },
  tabline = {},
  extensions = {},
}

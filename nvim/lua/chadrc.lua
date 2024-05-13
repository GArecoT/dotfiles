-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "ayu_light",
  nvdash = {
    load_on_startup = true,

    header = {
      [[                                        _.,._./)                             ]],
      [[                                    .-''        `-.                          ]],
      [[         ___                      .'               `.                        ]],
      [[  ____.-'   `--.____             /                 <)                        ]],
      [[<_.  /__---.    `.  `-""------.-'                   L                        ]],
      [[ `. //  `,                                        -.|                        ]],
      [[   \ \    )                                         `._                      ]],
      [[    | )                                                `-.                   ]],
      [[    J                                                     `-.                ]],
      [[     L  _.      /         \                      _           `--.__          ]],
      [[     `. \)     /           `.                     `-._             `-.___    ]],
      [[       \    .'              |                   _.'   `-._               `-. ]],
      [[        |"-'\`-._    \      |     .--._    _.--'          ``-.___           )]],
      [[        J  J\`.  `-._ \     |_.--'     """"                      `----.___.' ]],
      [[         L  )        "J    J                                                 ]],
      [[          `"           L   |                                                 ]],
      [[                       ( ...\                                                ]],
      [[                        \\\\'                                                ]],
      [[                         `-'                                                 ]],
      [[                                                                             ]],
      [[             ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗              ]],
      [[             ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║              ]],
      [[             ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║              ]],
      [[             ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║              ]],
      [[             ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║              ]],
      [[             ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝              ]],
    },
  },
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    order = { "mode", "file", "diagnostics", "git",
      "%=", "lsp_msg", "%=", "lsp", "cursor", "cwd" },

    modules = {
      cwd = function()
        return "%#Clock_txt#" ..
            '' .. "%#Clock_bg# " .. '%#Clock_txt# ' .. string.format(os.date('%R')) .. '%#St_sep_r#' .. ''
      end,
    }
  },
  hl_override = {
    -- Comment = { italic = true },
    -- ["@comment"] = { italic = true },
    Search = { bg = "purple", fg = "black" },
  },
  hl_add = {
    Clock_bg = { bg = "pink", fg = "statusline_bg" },
    Clock_txt = { bg = "statusline_bg", fg = "pink" }
  }
}

return M

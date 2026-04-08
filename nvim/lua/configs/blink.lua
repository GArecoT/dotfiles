require("blink.cmp").setup {
  fuzzy = { implementation = "lua" },
  keymap = {
    preset = "enter",
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
  },
}

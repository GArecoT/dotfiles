require("blink.cmp").setup {
  fuzzy = { implementation = "lua" },
  keymap = {
    preset = "enter",
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
  },
}

vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    local path = ev.data.path
    if name == "blink.cmp" and (kind == "install" or kind == "update") then
      if not ev.data.active then
        vim.cmd.packadd "telescope-fzf-native.nvim"
      end
      vim.system({ "sh", "-c", "cd " .. path .. " && cargo build --release" }, {
        on_stdout = function(_, data)
          if data then
            print(data)
          end
        end,
        on_stderr = function(_, data)
          if data then
            print("ERR:", data)
          end
        end,
        on_exit = function(_, code)
          if code == 0 then
            print "telescope-fzf-native.nvim built successfully!"
          else
            print "Failed to build telescope-fzf-native.nvim"
          end
        end,
      })
    end
  end,
})

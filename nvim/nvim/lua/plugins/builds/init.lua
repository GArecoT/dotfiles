vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    vim.print(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == "peek.nvim" and (kind == "install" or kind == "update") then
      require "plugins.builds.peek"(ev)
    end
    if name == "telescope-fzf-native.nvim" and (kind == "install" or kind == "update") then
      require "plugins.builds.telescope"(ev)
    end

    if name == "blink.cmp" and (kind == "install" or kind == "update") then
      require "plugins.builds.blink"(ev)
    end
  end,
})

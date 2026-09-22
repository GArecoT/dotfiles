return function(ev)
  local path = ev.data.path
  if not ev.data.active then
    vim.cmd.packadd "telescope-fzf-native.nvim"
  end
  vim.system({ "make", "-C", path }, {
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

return function(ev)
  local path = ev.data.path
  if not ev.data.active then
    vim.cmd.packadd "peek.nvim"
  end
  vim.system({ "sh", "-c", "cd " .. path .. " && deno task --quiet build:fast" }, {
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
        print "Peek instalado"
      else
        print "Peek instaldo"
      end
    end,
  })
end

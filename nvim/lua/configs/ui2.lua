-- Experimental UI2: floating cmdline and messages
vim.o.cmdheight = 0
require("vim._core.ui2").enable {
	enable = true,
	messagesopt = {

		timeout = 5000,
		maxheight = 0.3,
	},
	msg = {
		targets = {
			[""] = "msg",
			empty = "cmd",
			bufwrite = "msg",
			confirm = "cmd",
			emsg = "pager",
			echo = "msg",
			echomsg = "msg",
			echoerr = "pager",
			completion = "cmd",
			list_cmd = "pager",
			lua_error = "pager",
			lua_print = "msg",
			progress = "pager",
			rpc_error = "pager",
			quickfix = "msg",
			search_cmd = "cmd",
			search_count = "cmd",
			shell_cmd = "pager",
			shell_err = "pager",
			shell_out = "pager",
			shell_ret = "msg",
			undo = "msg",
			verbose = "pager",
			wildlist = "cmd",
			wmsg = "msg",
			typed_cmd = "cmd",
		},
		cmd = {
			maxheight = 0.5,
		},
		dialog = {
			maxheight = 0.5,
		},
		pager = {
			maxheight = 0.5,
		},
	},
}

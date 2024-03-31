local dap = require("dap")
dap.adapters.codelldb = {
	type = "server",
	port = "${port}",
	executable = {
		-- CHANGE THIS to your path!
		--     command = '/absolute/path/to/codelldb/extension/adapter/codelldb',
		command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
		args = { "--port", "${port}" },

		-- On windows you may have to uncomment this:
		-- detached = false,
	},
}
dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
	},
}
dap.configurations.c = dap.configurations.cpp

dap.adapters.python = function(cb, config)
	if config.request == "attach" then
		---@diagnostic disable-next-line: undefined-field
		local port = (config.connect or config).port
		---@diagnostic disable-next-line: undefined-field
		local host = (config.connect or config).host or "127.0.0.1"
		cb({
			type = "server",
			port = assert(port, "`connect.port` is required for a python `attach` configuration"),
			host = host,
			options = {
				source_filetype = "python",
			},
		})
	else
		cb({
			type = "executable",
			command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
			args = { "-m", "debugpy.adapter" },
			options = {
				source_filetype = "python",
			},
		})
	end
	require("mason-nvim-dap").default_setup(config)
end
dap.configurations.python = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			local cwd = vim.fn.getcwd()
			if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
				return cwd .. "/venv/bin/python"
			elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
				return cwd .. "/.venv/bin/python"
			else
				return "/usr/bin/python"
			end
		end,
	},
}

local dap = require("dap")
dap.adapters.java = function(callback)
	--   -- Here a function needs to trigger the `vscode.java.startDebugSession` LSP command
	--     -- The response to the command must be the `port` used below
	callback({
		type = "server",
		host = "127.0.0.1",
		port = port,
	})
end

-- Lua
return {
	"olimorris/persisted.nvim",
	event = { "BufRead", "BufNewFile" },
	cmd = { "Telescope persisted", "SessionLoad", "SessionLoadLast", "SessionLoadFromFile", "SessionToggle" },
	config = true,
	opts = {
		autosave = true,
		save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"),
	},
}

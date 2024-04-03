-- Lua
return {
	"olimorris/persisted.nvim",
	config = true,
	opts = {
		autosave = true,
		save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"),
	},
}

return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = { "BufRead", "BufNewFile" },
	config = function()
		require("todo-comments").setup()
	end,
}

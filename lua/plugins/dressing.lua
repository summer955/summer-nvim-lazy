return {
	{
		"stevearc/dressing.nvim",
		opts = {
			input = {
				default_prompt = "➤ ",
				win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
			},
			select = {
				-- backend = { "fzf", "builtin" },
				builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
			},
		},
	},
}
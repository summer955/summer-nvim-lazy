return {
	{
		"stevearc/dressing.nvim",
		event = "BufRead",
		opts = {
			input = {
				default_prompt = "➤ ",
				win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
			},
			select = {
				backend = { "telescope", "builtin" },
				builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
			},
		},
	},
}

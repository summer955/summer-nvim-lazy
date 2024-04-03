local amount = 3
return {
	"mrjones2014/smart-splits.nvim",
	keys = {
		{
			"]j",
			function()
				require("smart-splits").resize_down(amount)
			end,
			desc = "resize_down",
		},
		{
			"]k",
			function()
				require("smart-splits").resize_up(amount)
			end,
			desc = "resize_up",
		},
		{
			"]h",
			function()
				require("smart-splits").resize_left(amount)
			end,
			desc = "resize_left",
		},
		{
			"]l",
			function()
				require("smart-splits").resize_right(amount)
			end,
			desc = "resize_right",
		},
		{
			"]r",
			function()
				require("smart-splits").start_resize_mode()
			end,
			desc = "Persistent window resizing mode",
		},
		-- swap buffer
		{
			"<leader><leader>h",
			function()
				require("smart-splits").swap_buf_left()
			end,
			desc = "Swap buffer with the left window",
		},
		{
			"<leader><leader>l",
			function()
				require("smart-splits").swap_buf_right()
			end,
			desc = "Swap buffer with the right window",
		},
		{
			"<leader><leader>j",
			function()
				require("smart-splits").swap_buf_down()
			end,
			desc = "Swap buffer with the down window",
		},
		{
			"<leader><leader>k",
			function()
				require("smart-splits").swap_buf_up()
			end,
			desc = "Swap buffer with the up window",
		},
	},
}

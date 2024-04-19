return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = { "BufRead", "BufNewFile" },
	opts = function()
		require("telescope").load_extension("persisted")
		local actions = require("telescope.actions")
		-- local builtin = require("telescope.builtin")
		return {
			defaults = {
				git_worktrees = vim.g.git_worktrees,
				path_display = { "truncate" },
			},
			sorting_strategy = "ascending",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.55,
				},
				vertical = {
					mirror = false,
				},
				width = 0.87,
				height = 0.80,
				preview_cutoff = 120,
			},
			extension = {
				persisted = {
					layout_config = { width = 0.55, height = 0.55 },
				},
			},
			mappings = {
				i = {
					["<C-n>"] = actions.cycle_history_next,
					["<C-p>"] = actions.cycle_history_prev,
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
				},
				n = { ["q"] = actions.close },
			},
		}
	end,
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files({})
			end,
			desc = "search files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep({})
			end,
			desc = "search contents",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers({})
			end,
			desc = "search this buffers ",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags({})
			end,
			desc = "search tags",
		},
		{
			"<leader>fl",
			function()
				require("telescope.builtin").current_buffer_fuzzy_find({})
			end,
			desc = "search context",
		},
		--From plgin:persisted.
		{
			"<leader>fs",
			"<cmd>Telescope persisted<cr>",
			desc = "Select Session Load",
		},
	},
}

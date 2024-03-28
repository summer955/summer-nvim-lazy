return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = { "BufRead", "BufNewFile" },
	opts = function()
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")
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
			mappings = {
				i = {
					["<C-n>"] = actions.cycle_history_next,
					["<C-p>"] = actions.cycle_history_prev,
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
				},
				n = { ["q"] = actions.close },
			},
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {}),
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}),
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {}),
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}),
			vim.keymap.set("n", "<leader>fl", builtin.current_buffer_fuzzy_find, {}),
		}
	end,
}

local wk = require("which-key")
wk.register({
	["<leader>d"] = { name = "+Debug" },
	["<leader>f"] = { name = "+Telescope" },
	["<leader>b"] = { name = "+Tabline " },
	["<leader>w"] = { name = "+Move " },
	["<leader>x"] = { name = "+Trouble " },
	["<leader>l"] = { name = "+Rdit line " },
	["<leader><leader>"] = { name = "Secondary guidance" },
	["<leader>h"] = {
		name = "+Gitsigns",
		s = { "stage_hunk" },
		r = { "reset_hunk" },
		S = { "stage_buffer" },
		u = { "undo_stage_hunk" },
		R = { "reset_buffer" },
		p = { "preview_hunk" },
		b = { "blame_line" },
		d = { "diffthis" },
		D = { "diffthis('~')" },
	},
	["<leader>t"] = {
		name = "Open file tree and entry Gitsigns ",
		b = { "toggle_current_line_blame" },
		d = { "toggle_deleted" },
	},
})

return {
	{
		"mhinz/vim-startify",
		version = "*",
		dependencies = "ryanoasis/vim-devicons",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-moon]])
		end,
	},
	{
		"vim-airline/vim-airline",
		version = "*",
		dependencies = "ryanoasis/vim-devicons",
		init = function()
			-- vim.g.airline_left_sep = ""
			-- vim.g.airline_right_sep = ""
			vim.g.airline_powerline_fonts = 1
		end,
	},
	{
		"vim-airline/vim-airline-themes",
		version = "*",
		init = function()
			vim.g.airline_theme = "kolor"
		end,
	},
	{
		"preservim/tagbar",
		version = "*",
		event = "BufRead",
	},
	{
		"ggandor/leap.nvim",
		name = "leap",
		event = "BufRead",
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	{
		"mbbill/undotree",
		event = "BufRead",
	},
	{ "arcticicestudio/nord-vim" },
	{ "tpope/vim-obsession" },

	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
		init = function()
			vim.g.tmux_navigator_no_wrap = 1
		end,
	},
	{
		"scrooloose/nerdtree",
		dependencies = { "ryanoasis/vim-devicons" },
		cmd = "NERDTreeToggle",
	},
	{
		"tpope/vim-surround",
		event = "VeryLazy",
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
		opts = {
			check_ts = true,
			ts_config = { java = false },
			fast_wrap = {
				map = "<M-e>",
				chars = { "{", "[", "(", '"', "'" },
				pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
				offset = 0,
				end_key = "$",
				keys = "qwertyuiopzxcvbnmasdfghjkl",
				check_comma = true,
				highlight = "PmenuSel",
				highlight_grey = "LineNr",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		version = "*",
		event = "BufRead",
		config = function()
			require("treesitter-config")
		end,
	},
	{
		"p00f/nvim-ts-rainbow",
		dependencies = "nvim-treesitter/nvim-treesitter",
		event = "BufRead",
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		event = "BufRead",
	},
	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		opts = function()
			return { pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook() }
		end,
	},
	{ "folke/neodev.nvim", opts = { stages = "fade" }, event = "InsertEnter" },
	--LSP Plugins
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_uninstalled = "✗",
					package_pending = "➜",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "BufRead",
		config = function()
			require("lsp-set")
		end,
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		event = "BufRead",
		config = function()
			require("bufferline").setup({
				options = {
					diagnostics = "nvim_lsp",
					offsets = {
						{
							filetype = "nerdtree",
							text = "File Explorer",
							highlight = "Directory",
							text_align = "left",
						},
					},
				},
			})
		end,
	},
	{
		{
			"lukas-reineke/indent-blankline.nvim",
			event = "BufRead",
			main = "ibl",
			opts = {
				indent = { char = "▏" },
				scope = { show_start = false, show_end = false },
				exclude = {
					buftypes = {
						"nofile",
						"terminal",
					},
					filetypes = {
						"help",
						"startify",
						"aerial",
						"alpha",
						"dashboard",
						"lazy",
						"neogitstatus",
						"NvimTree",
						"neo-tree",
						"Trouble",
					},
				},
			},
		},
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
		event = "BufRead",
		config = function()
			require("ufo-config")
		end,
		opts = {
			preview = {
				mappings = {
					scrollB = "<C-b>",
					scrollF = "<C-f>",
					scrollU = "<C-u>",
					scrollD = "<C-d>",
				},
			},
		},
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		keys = "<F7>",
		opts = {
			size = 10,
			open_mapping = [[<F7>]],
			shading_factor = 2,
			direction = "float",
			float_opts = {
				border = "curved",
				highlights = { border = "Normal", background = "Normal" },
			},
		},
	},
	-- {
	-- 	"rcarriga/nvim-notify",
	-- 	opts = { stages = "fade" },
	-- 	config = function()
	-- 		vim.notify = require("notify")
	-- 	end,
	-- },
	{
		"lewis6991/gitsigns.nvim",
		event = "BufRead",
		config = function()
			require("gitsigns-config")
		end,
	},
	{
		"SirVer/ultisnips",
		init = function()
			vim.g.UltiSnipsExpandTrigger = "<c-u>"
			vim.g.UltiSnipsJumpForwardTrigger = "<c-v>"
			vim.g.UltiSnipsJumpBackwardTrigger = "<c-b>"
		end,
	},
	{
		"mg979/vim-visual-multi",
		event = "InsertEnter",
	},
	{
		"farmergreg/vim-lastplace",
		event = "BufRead",
		init = function()
			vim.g.lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
			vim.g.lastplace_ignore_buftype = "quickfix,nofile,help"
			vim.g.lastplace_open_folds = 0
		end,
	},
	{
		"tpope/vim-sleuth",
		event = "InsertEnter",
	},
	{
		"tpope/vim-fugitive",
		event = "BufRead",
	},
	{
		"andrewradev/splitjoin.vim",
		event = "InsertEnter",
	},
	{
		"junegunn/vim-easy-align",
		event = "BufRead",
		init = function()
			vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", {})
			vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", {})
		end,
	},
	{
		"tpope/vim-abolish",
		event = "BufRead",
	},
	{
		"tpope/vim-unimpaired",
		event = "BufRead",
	},
	{
		"gennaro-tedesco/nvim-peekup",
		event = "BufRead",
	},
	{
		"fedepujol/move.nvim",
		event = "BufRead",
		config = function()
			require("move").setup({
				line = {
					enable = true, -- Enables line movement
					indent = true, -- Toggles indentation
				},
				block = {
					enable = true, -- Enables block movement
					indent = true, -- Toggles indentation
				},
				word = {
					enable = true, -- Enables word movement
				},
				char = {
					enable = false, -- Enables char movement
				},
			})
		end,
	},
	{
		"folke/trouble.nvim",
		event = "BufRead",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"tpope/vim-repeat",
		event = "BufRead",
		init = function()
			vim.api.nvim_command(
				string.format(
					"silent! call repeat#set(\"call surround#repeats#Enable('\\v<Plug>MyWonderfulMap')\", %s)",
					vim.v.count
				)
			)
		end,
	},
	{
		"kevinhwang91/nvim-bqf",
		event = "VeryLazy",
		config = function()
			require("bqf-config")
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({})
		end,
	},
	{
		"nacro90/numb.nvim",
		event = "BufRead",
		config = function()
			require("numb").setup({
				show_numbers = true, -- Enable 'number' for the window while peeking
				show_cursorline = true, -- Enable 'cursorline' for the window while peeking
			})
		end,
	},
	{
		"nvim-pack/nvim-spectre",
		event = "BufRead",
		config = function()
			require("spectre").setup()
		end,
		lazy = true,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
	{
		"sindrets/diffview.nvim",
		event = "BufRead",
	},
}

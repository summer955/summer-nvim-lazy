return{
	{
	'mhinz/vim-startify',
	version = "*",
	dependencies = {"ryanoasis/vim-devicons"},
	},
	{
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme tokyonight]])
	end,
	},
	{
	'vim-airline/vim-airline',
	version = "*",
	init = function()
		vim.g.airline_left_sep = ''
		vim.g.airline_right_sep = ''
	end,
	},
	{
	'vim-airline/vim-airline-themes',
	version = "*",
--	init = function()
--		vim.g.airline_theme='simple'	
--	end,
	},
	{
	'preservim/tagbar',
	version = "*", 
	},
	{
	'justinmk/vim-sneak',
	version = "*", 
	},
	{
	'mbbill/undotree',
	},
	{'preservim/nerdcommenter'},
	{'arcticicestudio/nord-vim'},
	{'tpope/vim-obsession'},
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
}
}

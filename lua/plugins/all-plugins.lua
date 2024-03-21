return{
	{
	'mhinz/vim-startify',
	version = "*",
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
    -- init = function()
	   --  vim.g.airline_theme='tokyonight'	
    -- end,
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
	},

	 {
	 'scrooloose/nerdtree',
	 -- dependencies = {"ryanoasis/vim-devicons"},
	 },
	 {
	 'junegunn/fzf',
	  version = "*",
	 },
	 {
	'junegunn/fzf.vim',
	 version = "*",
	 dependencies = {"junegunn/fzf"},
	config = function()
	require("fzf-config")
	end,
	 },
	 {'tpope/vim-surround'},
     {
         'windwp/nvim-autopairs',
          event = "InsertEnter",
          config = function()
           require("nvim-autopairs").setup{}
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
        'nvim-treesitter/nvim-treesitter',
	    version = "*",
        config = function()
        require('treesitter-config')
        end
      },
    {'JoosepAlviste/nvim-ts-context-commentstring'},
    {
            'numToStr/Comment.nvim',
        opts = function()
          return { pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook() }
        end
    },
    -- { "folke/neodev.nvim", opts = {stages = "fade" }},
    --LSP Plugins
    {
        "williamboman/mason.nvim",
        opts = {
              ui = {
                    icons = {
                          package_installed = "✓",
                          package_uninstalled = "✗",
                          package_pending = "->",
                        },
                  },
        },
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup {
                    ensure_installed = { "lua_ls" },
            }
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
        require('lspconfig').lua_ls.setup({})
        end
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
   }



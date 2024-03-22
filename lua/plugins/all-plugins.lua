return{
	{
	'mhinz/vim-startify',
	version = "*",
    dependencies =  "ryanoasis/vim-devicons",
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
    dependencies =  "ryanoasis/vim-devicons",
	init = function()
		vim.g.airline_left_sep = ''
		vim.g.airline_right_sep = ''
	end,
	},
	{
	'vim-airline/vim-airline-themes',
	version = "*",
    -- init = function()
	   --  vim.g.airline_theme='simple'
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

	 -- {
  --   'nvim-tree/nvim-tree.lua',
	 -- dependencies = {"nvim-tree/nvim-web-devicons"},
  --    version = "*",
  --    config = function()
  --       require("nvim-tree").setup()
  --    end,
	 -- },
   { 'scrooloose/nerdtree'},
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
            require("lsp-set")
        end
    },
    {
        'neovim/nvim-lspconfig',
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup{
                options = {
                    diagnostics = "nvim_lsp",
                    offsets = {{
                        filetype = "nerdtree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }}
                }
            }
        end,
    },
    {
        {
            "lukas-reineke/indent-blankline.nvim",
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
        'kevinhwang91/nvim-ufo',
        dependencies = 'kevinhwang91/promise-async',
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
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
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
    {
        'rcarriga/nvim-notify',
        opts = { stages = "fade" },
        config = function()
            vim.notify = require("notify")
        end,
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require("gitsigns-config")
        end,
    },
    {
        'SirVer/ultisnips',
        init = function()
        vim.g.UltiSnipsExpandTrigger = "<c-u>"
        vim.g.UltiSnipsJumpForwardTrigger = "<c-v>"
        vim.g.UltiSnipsJumpBackwardTrigger = "<c-b>"
        end,
    },
    {'mg979/vim-visual-multi'},
    {
        'farmergreg/vim-lastplace',
        init = function()
        vim.g.lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
        vim.g.lastplace_ignore_buftype = "quickfix,nofile,help"
        vim.g.lastplace_open_folds = 0
        end
    },
    {'tpope/vim-sleuth'},
    {'tpope/vim-fugitive'},
    {'luochen1990/rainbow'},
    {'andrewradev/splitjoin.vim'},
}





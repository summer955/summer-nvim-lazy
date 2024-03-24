return {
	{
		"L3MON4D3/LuaSnip",
		lazy = true,
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
		opts = {
			history = true,
			delete_check_events = "TextChanged",
			region_check_events = "CursorMoved",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lsp",
			"onsails/lspkind-nvim",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/vim-vsnip",
		},
		event = "InsertEnter",
		config = function()
			require("cmp-config")
		end,
	},
}

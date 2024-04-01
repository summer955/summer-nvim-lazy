require("mason-lspconfig").setup({
	ensure_installed = {
		--lsp
		"lua_ls",
		"clangd",
		"pyright",
		--please run "apt install openjdk-21-jdk"
		"jdtls",
		-- "java_language_server",
	},
})

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({})
	end,
	--lua
	["lua_ls"] = function()
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,

	--C and C++
	["clangd"] = function()
		lspconfig.clangd.setup({
			cmd = {
				"clangd",
				"--header-insertion=never",
				"--query-driver=/opt/homebrew/opt/llvm/bin/clang",
				"--all-scopes-completion",
				"--completion-style=detailed",
			},
		})
	end,
	--python
	["pyright"] = function()
		lspconfig.pyright.setup({})
	end,
	-- java
	["jdtls"] = function()
		lspconfig.jdtls.setup({})
	end,
})

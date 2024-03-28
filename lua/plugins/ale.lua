return {
	"dense-analysis/ale",
	event = { "BufRead", "BufNewFile" },
	config = function()
		local g = vim.g
		--run linter
		g.ale_lint_on_text_changed = "normal"
		g.ale_lint_on_enter = 1
		g.ale_sign_column_always = 1
		--airline_extensions
		g.airline_extensions_ale_enabled = 1
		g.ale_disable_lsp = 1
		g.ale_sign_column_always = 1
		g.ale_floating_window_border = { "│", "─", "╭", "╮", "╯", "╰", "│", "─" }
		g.ale_sign_error = ">>"
		g.ale_sign_warning = "--"
		g.ale_sign_column_always = 1
		g.ale_echo_msg_error_str = "E"
		g.ale_echo_msg_warning_str = "W"
		g.ale_echo_msg_format = "[%linter%] %s [%severity%]"
		-- set linter
		g.ale_linters = {
			lua = { "lua_ls" },
			-- python = { "flake8" },
		}
	end,
}

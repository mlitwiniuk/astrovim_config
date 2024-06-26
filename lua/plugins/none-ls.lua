-- Customize None-ls sources

---@type LazySpec
return {
	"mlitwiniuk/none-ls.nvim",
	branch = "htmlbeautifier",
	opts = function(_, config)
		-- config variable is the default configuration table for the setup function call
		local null_ls = require("null-ls")

		-- Check supported formatters and linters
		-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
		-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
		config.sources = {
			-- Set a formatter
			-- null_ls.builtins.formatting.eslint,
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.formatting.htmlbeautifier,
			-- null_ls.builtins.formatting.prettier,
			-- null_ls.builtins.formatting.erb_lint,
			-- null_ls.builtins.formatting.erb_format.with({
			-- 	generator_opts = {
			-- 		command = "erb-format",
			-- 		args = { "--print-width 250", "--stdin" },
			-- 		to_stdin = true,
			-- 	},
			-- }),
			null_ls.builtins.formatting.prettier.with({
				filetypes = { "html", "json", "yaml", "markdown" },
			}),
		}
		return config -- return final config table
	end,
}

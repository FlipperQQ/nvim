return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.diagnostics.eslint_d.with({
				-- 	filetypes = {
				-- 		"javascript",
				-- 		"javascriptreact",
				-- 		"typescript",
				-- 		"typescriptreact",
				-- 		"css",
				-- 		"scss",
				-- 		"less",
				-- 		"html",
				-- 		"json",
				-- 		"jsonc",
				-- 		"yaml",
				-- 		"markdown",
				-- 		"markdown.mdx",
				-- 		"graphql",
				-- 		"handlebars",
				-- 	},
				-- }),
				null_ls.builtins.formatting.prettier.with({
					filetypes = {
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"css",
						"scss",
						"less",
						"html",
						"json",
						"jsonc",
						"yaml",
						"markdown",
						"markdown.mdx",
						"graphql",
						"handlebars",
					},
				}),
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.phpcsfixer,
				null_ls.builtins.diagnostics.erb_lint,
			},
		})

		-- 保存時に自動フォーマット
		vim.api.nvim_create_autocmd("BufWritePre", {
			callback = function(args)
				vim.lsp.buf.format({ bufnr = args.buf, timeout_ms = 3000, async = true })
			end,
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}

return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.intelephense.setup({
				capabilities = capabilities,
			})
			lspconfig.solargraph.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.vtsls.setup({
				capabilities = capabilities,
				single_file_support = false,
				settings = {
					typescript = {
						inlayHints = {
							includeInlayParameterNameHints = "literal",
							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayVariableTypeHints = false,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayEnumMemberValueHints = true,
						},
					},
					javascript = {
						inlayHints = {
							includeInlayParameterNameHints = "all",
							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayVariableTypeHints = true,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayEnumMemberValueHints = true,
						},
					}
				}
			})
			-- lspconfig.vue_ls.setup({
			-- 	filetypes = { "vue" },
			-- 	capabilities = capabilities,
			-- })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>lh", function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({}), {})
			end, { desc = "Toggle Inlay Hints" })
		end,
	},
}

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal float<CR>", {})
		vim.keymap.set("n", "<C-n><C-l>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<C-n><C-q>", ":Neotree close<CR>", {})
		require("neo-tree").setup({
				window = {
					-- position = "left",
					width = 25,
					-- auto_expand_width = true,
				},
		})
	end,
}

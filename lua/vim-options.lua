vim.scriptencoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.g.background = "light"
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.spell = true
-- key map
vim.g.mapleader = " "
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { silent = true })
vim.api.nvim_set_keymap("x", "jk", "<ESC>", { silent = true })
-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.path:append({ "**" })
vim.keymap.set("n", "<leader>/", ":nohlsearch <CR>")
-- Navigate vim panes better
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
-- buffer
vim.keymap.set("n", "<leader>h", "<cmd>bprev<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd>bd!<CR>")
vim.keymap.set("n", "<leader>be", "<cmd>%bd!|e#|bd#<CR>")
-- file
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.undofile = false
-- Transparent
vim.cmd [[
				highlight Normal ctermbg=none guibg=none
				highlight NonText ctermbg=none guibg=none
]]
vim.o.termguicolors = true
-- use PowerShell as default shell
if vim.fn.has('win64') == 1 then
	vim.o.shell = "powershell.exe"
end

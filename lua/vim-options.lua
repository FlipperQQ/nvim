vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smarttab")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set number")
vim.cmd("inoremap jk <Esc>")
vim.g.mapleader = " "
-- vim.g.mapleader = ","
vim.g.background = "light"
vim.opt.swapfile = false
-- Navigate vim panes better
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
--vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.cmd("set nohlsearch")
-- buffer
vim.keymap.set("n", "<leader>h", "<cmd>bprev<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>")
vim.keymap.set("n", "<leader>be", "<cmd>%bd|e#|bd#<CR>")

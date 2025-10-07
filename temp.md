vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("inoremap jk <Esc>")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
local lazyrepo = "https://github.com/folke/lazy.nvim.git"
local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
if vim.v.shell_error ~= 0 then
vim.api.nvim_echo({
{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
{ out, "WarningMsg" },
{ "\nPress any key to exit..." },
}, true, {})
vim.fn.getchar()
os.exit(1)
end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
spec = {
-- add your plugins here
{"catppuccin/nvim", name="catppucin", priority = 1000},
{
'nvim-telescope/telescope.nvim', tag = '0.1.8',
dependencies = { 'nvim-lua/plenary.nvim' }
},
{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
{
"nvim-neo-tree/neo-tree.nvim",
branch = "v3.x",
dependencies = {
"nvim-lua/plenary.nvim",
"nvim-tree/nvim-web-devicons",
"MunifTanjim/nui.nvim",
}
}
},
-- Configure any other settings here. See the documentation for more details.
-- automatically check for plugin updates
checker = { enabled = true },
})

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

local config = require("nvim-treesitter.configs")
config.setup({
ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
sync_install = false,
highlight = { enable = true },
indent = { enable = true },  
 })

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

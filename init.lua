vim.g.mapleader = " "

-- Install lazy.nvim automatically if it is missing
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- Plugin setup
require("lazy").setup({
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				view = {
					side = "right",
					width = 30,
				},
			})
		vim.keymap.set("n", "<leader>'", ":NvimTreeToggle<CR><C-w>p")
		end,
	},

	{
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup()

			vim.keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")
			vim.keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")
		end,
	},

	{
		"junegunn/fzf",
		build = "./install --bin",
	},

	{
		"junegunn/fzf.vim",
		dependencies = {
			"junegunn/fzf",
		},
		config = function()
			vim.keymap.set("n", "<leader>ff", ":Files<CR>")
			vim.keymap.set("n", "<leader>fg", ":Rg<CR>")
		end,
	},
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("basedpyright")

			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "K", vim.lsp.buf.hover)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
		end,
	},
})
-- Syntax 
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Editing
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true

-- Window behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Comfortable view
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Keymaps
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("t", "jk", [[<C-\><C-n>]])

-- Command
vim.keymap.set("n", "<leader>.", "<C-w>w")
vim.keymap.set("n", "<leader>q", ":qa<CR>")
vim.keymap.set("n", "<leader>wq", ":wqa<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float)

-- Delete without yanking
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- Start up
vim.keymap.set("n", "<leader>`", function()
	require("nvim-tree.api").tree.open()
	vim.cmd("tabnew")
	vim.cmd("terminal")
	vim.cmd("tabprevious")
	vim.cmd("wincmd w")
end)


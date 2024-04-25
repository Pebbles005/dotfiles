vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = "split"
vim.opt.scrolloff = 5
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Custom keybinds
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move half page and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move half page and center" })
vim.keymap.set("n", "<C-s>", vim.cmd.write, { desc = "save file" })
vim.keymap.set("n", "<Tab>", "<cmd> bnext <CR>", { desc = "go to next opened file" })
vim.keymap.set("n", "<C-e>", function()
	local buf_list = vim.api.nvim_list_bufs()
	local num_buffers = #buf_list
	if num_buffers <= 1 and vim.bo.filetype == "netrw" then
		vim.cmd("bwipeout!")
	elseif vim.bo.filetype == "netrw" then
		vim.cmd("Rexplore")
	else
		local layout = vim.fn.winsaveview()
		vim.cmd("Explore")
	end
end, { silent = true })

-- [[ Basic Autocommands ]]
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

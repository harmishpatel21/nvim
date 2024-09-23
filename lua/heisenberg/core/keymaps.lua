-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "X", '"_X')

-- disable arrow keys in normal mode
keymap.set("n", "<left>", '<cmd> echo "Use h to move to the left! "<CR>', { desc = "h to move to left"})
keymap.set("n", "<right>", '<cmd> echo "Use l to move to the right! "<CR>', { desc = "l to move to right"})
keymap.set("n", "<up>", '<cmd> echo "Use k to move to the up! "<CR>', { desc = "k to move to up"})
keymap.set("n", "<down>", '<cmd> echo "Use j to move to the down! "<CR>', { desc = "j to move to down"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>S", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })


-- Highlighting when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlighting when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_set_keymap("n", "gg", "gg0" , { noremap = true, silent = true })


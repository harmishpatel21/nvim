-- set leader key to space
vim.g.mapleader = " "

local map = vim.keymap.set

-- Explore
map("n", "<leader>pv", vim.cmd.Ex)

-- Clear search highlights
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
map("n", "X", '"_X')

-- disable arrow keys in normal mode
map("n", "<left>", '<cmd> echo "Use h to move to the left! "<CR>', { desc = "h to move to left"})
map("n", "<right>", '<cmd> echo "Use l to move to the right! "<CR>', { desc = "l to move to right"})
map("n", "<up>", '<cmd> echo "Use k to move to the up! "<CR>', { desc = "k to move to up"})
map("n", "<down>", '<cmd> echo "Use j to move to the down! "<CR>', { desc = "j to move to down"})

-- Navigate splits
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })

-- Terminal (Windows)
map("n", "<leader>tt", ":split | terminal powershell<CR>", { desc = "Open terminal in horizontal split" })
map("n", "<leader>tv", ":vsplit | terminal powershell<CR>", { desc = "Open terminal in vertical split" })

-- Save and Quit
--[[ map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit current window" })
map("n", "<leader>Q", ":qa!<CR>", { desc = "Quit all windows without saving" }) ]]

-- LazyVim Helper Keymaps
map("n", "<leader>L", ":Lazy<CR>", { desc = "LazyVim" })
map("n", "<leader>s", ":w<CR>", { desc = "Save file" }) 

-- Highlighting when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlighting when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_set_keymap("n", "gg", "gg0" , { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>m", [[:call append(line('.'), ['if __name__ == "__main__":', '    ']) | normal! j^<CR>]], { noremap = true, silent = true})

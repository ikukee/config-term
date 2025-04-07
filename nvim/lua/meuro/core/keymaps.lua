vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>s-", "<C-w>-", { desc = "Decrease Height" }) -- make split windows equal width & height
keymap.set("n", "<leader>s+", "<C-w>+", { desc = "Increase Height" }) -- close current split window
keymap.set("n", "<leader>s[", "<C-w><", { desc = "Increase Width" }) -- make split windows equal width & height
keymap.set("n", "<leader>s]", "<C-w>>", { desc = "Decrease Width" }) -- close current split window
keymap.set("n", "<leader>sx", "<CMD>close<CR>", { desc = "Close split" }) -- close current split window
-- explorer
keymap.set("n", "<leader>ee", "<CMD>Explore<CR>", { desc = "Open Explorer" })
keymap.set("n", "gb", "<C-o>", { desc = "go back" })
keymap.set("n", "sp", '"0p', { desc = "smart paste" })
keymap.set("n", "k", "kzz", { desc = "up" })
keymap.set("n", "j", "jzz", { desc = "down" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "up" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "down" })
-- Vision
keymap.set("v", "sp", '"0p', { desc = "smart paste" })
keymap.set("v", "k", "kzz", { desc = "up" })
keymap.set("v", "j", "jzz", { desc = "down" })
keymap.set("v", "<C-d>", "<C-d>zz", { desc = "up" })
keymap.set("v", "<C-u>", "<C-u>zz", { desc = "down" })
-- vim.cmd([[nnoremap k kzz]])
-- vim.cmd([[nnoremap j jzz]])

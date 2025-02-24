vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window


-- explorer
keymap.set("n", "<leader>ee", "<CMD>Oil<CR>", { desc = "Open parent directory" })
keymap.set("n", "<leader>ef", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

keymap.set("n", "gb", "<C-o>", { desc = "go back" })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map({ "n" }, "<C-z>", "u", { desc = "Undo" })
map({ "n" }, "<C-y>", "<cmd>redo<cr>", { desc = "Redo" })
map("i", "<C-z>", "<C-\\><C-O>u", { noremap = true, silent = true })
map("i", "<C-y>", "<C-\\><C-O><C-R>", { noremap = true, silent = true })

-- Jump to the beginning/end of a word
map({ "n" }, "<C-Left>", "b", { desc = "Word beginning" })
map({ "n" }, "<C-Right>", "e", { desc = "Word end" })
map("i", "<C-Left>", "<C-\\><C-O>b", { noremap = true, silent = true })
map("i", "<C-Right>", "<C-\\><C-O>w", { noremap = true, silent = true })

-- delete entire line
map("n", "<C-x>", "dd", { noremap = true, silent = true })
map("i", "<C-x>", "<Esc>ddi", { noremap = true, silent = true })

-- jump up and down
map("n", "<C-Up>", "{", { noremap = true, silent = true })
map("n", "<C-Down>", "}", { noremap = true, silent = true })
map("i", "<C-Up>", "<C-\\><C-O>{", { noremap = true, silent = true })
map("i", "<C-Down>", "<C-\\><C-O>}", { noremap = true, silent = true })

-- Open terminal

map("n", "<C-t>", ":split | resize 20 | terminal<CR>", { noremap = true, silent = true })
map("i", "<C-t>", "<C-\\><C-n>:split | resize 20 | terminal<CR>", { noremap = true, silent = true })

-- Navigate with tab

map('n', '<Tab>', '<cmd>lua navTab()<CR>', {noremap = true, silent = true})


-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- nvim-tree
keymap.set("n", "<C-d>", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope fuzzy finder
keymap.set("n", "<C-f><C-f>", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<C-f><C-s>", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<C-f><C-c>", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<C-f><C-b>", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<C-f><C-h>", "<cmd>Telescope help_tags<cr>") -- list available help tags

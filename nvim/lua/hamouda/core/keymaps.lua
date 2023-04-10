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

-- Vscode-like line moving
keymap.set("n", "<A-down>", ":m .+1<CR>==")
keymap.set("n", "<A-up>", ":m .-2<CR>==")
keymap.set("i", "<A-down>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<A-up>", "<Esc>:m .-2<CR>==gi")
keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv")

-- Same with j and k
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")
keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Keep searched word in the middle of the screen
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Replace directly all words pointed by cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make file directly to executable (chmod +x)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#B3AC37 ]])

-- configure nvim-tree
nvimtree.setup({
	-- Opens in place of the unnamed buffer if it's empty.
	hijack_unnamed_buffer_when_opening = true,
	-- disable window_picker for explorer to work well with window splits
	actions = {
		open_file = {
			quit_on_open = true,
			resize_window = true,
			window_picker = {
				enable = false,
			},
		},
	},
})

-- open tree if startup buffer is a directory, is empty or is unnamed.
local function open_nvim_tree(data)
	-- buffer is a [No Name]
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not no_name and not directory then
		return
	end

	-- change to the directory
	if directory then
		vim.cmd.cd(data.file)
	end

	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

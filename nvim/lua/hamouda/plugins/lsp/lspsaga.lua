-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
	-- ui = {
	-- 	colors = {
	-- 		normal_bg = "#022746",
	-- 	},
	-- },
	ui = {
		kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
	},
})

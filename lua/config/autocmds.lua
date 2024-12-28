-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- custom commands are preferred to start with 'I'

-- close current tab, and move to next one
vim.api.nvim_create_user_command("Ibd", "bd | bn", {})
vim.api.nvim_create_user_command("NewClangFmtFile", "%!clang-format -style=Google -dump-config > .clang-format", {})
-- format current file using ClangFmt
vim.api.nvim_create_user_command("ClangFmt", "%!clang-format --style=file", {})

-- custome config for neo-tree
require("neo-tree").setup({
	commands = {
		go_to_parent_dir = function(state)
			local node = state.tree:get_node()
			require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
		end,
	},
	window = {
		mappings = {
			-- go to parent node
			["IP"] = "go_to_parent_dir",
		},
	},
})

-- theme config
-- vim.o.background = "light"

-- mason
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

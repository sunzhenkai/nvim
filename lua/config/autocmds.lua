-- custom commands are preferred to start with 'I'

-- close current tab, and move to next one
vim.api.nvim_create_user_command("Ibd", "bd | bn", {})
vim.api.nvim_create_user_command("NewClangFmtFile", "%!clang-format -style=Google -dump-config > .clang-format", {})
-- format current file using ClangFmt
vim.api.nvim_create_user_command("ClangFmt", "%!clang-format", {})

-- custome config for neo-tree
require("neo-tree").setup({
	window = {
		mappings = {
			-- go to parent node
			["IP"] = function(state)
				local node = state.tree:get_node()
				require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
			end,
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

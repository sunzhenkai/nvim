return {
	-- theme
	-- add gruvbox
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},

	-- change trouble config
	{
		"folke/trouble.nvim",
		-- opts will be merged with the parent spec
		opts = { use_diagnostic_signs = true },
	},

	-- tool
	-- cmake
	{ "Civitasv/cmake-tools.nvim" },
}

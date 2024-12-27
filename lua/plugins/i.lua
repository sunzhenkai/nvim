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
	-- override nvim-cmp and add cmp-emoji
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })
		end,
	},

	-- cmake
	{ "Civitasv/cmake-tools.nvim" },

	-- add any tools you want to have installed below
	{
		"williamboman/mason.nvim",
		opts = {
			-- https://github.com/williamboman/mason-lspconfig.nvim
			ensure_installed = {
				"markdownlint-cli2",
				"markdown-toc",
				"cmakelang",
				"cmakelint",
			},
		},
	},
}

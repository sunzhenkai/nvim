return {
	"williamboman/mason.nvim",
	opts = {
		-- https://github.com/williamboman/mason-lspconfig.nvim
		ensure_installed = {
			"markdownlint-cli2",
			"markdown-toc",
			"cmakelang",
			"cmakelint",
			"clangd",
			"gopls",
			"rust-analyzer",
			"clang-format",
			"jsonlint",
		},
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
}

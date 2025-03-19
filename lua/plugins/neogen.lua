return {
	"danymat/neogen",
	config = function()
		require("neogen").setup({ snippet_engine = "luasnip" })
	end,
	keys = {
		{
			"<Leader>nc",
			"<cmd>lua require('neogen').generate({ type = 'class' })<CR>",
			desc = "Generate Class Documentation",
		},
		{
			"<Leader>nd",
			"<cmd>lua require('neogen').generate({ type = 'file' })<CR>",
			desc = "Generate File Documentation",
		},
		{
			"<Leader>nf",
			"<cmd>lua require('neogen').generate({ type = 'func' })<CR>",
			desc = "Generate Function Documentation",
		},
	},
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
}

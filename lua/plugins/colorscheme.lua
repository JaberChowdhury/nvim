--return {
--	{
--		"craftzdog/solarized-osaka.nvim",
--		lazy = true,
--		priority = 1000,
--		opts = function()
--			return {
--				transparent = true,
--			}
--		end,
--e	},
--}

return {
	{ "shaunsingh/nord.nvim" },

	{
		"LazyVim/LazyVim",

		opts = {
			colorscheme = "nord",
		},
	},
}

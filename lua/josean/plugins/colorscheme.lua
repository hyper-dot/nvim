return {
	"Mofiqul/vscode.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("vscode").setup({
			-- Enable transparent background
			transparent = true,
		})
		vim.cmd([[colorscheme vscode]])
	end,
}

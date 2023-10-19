-- require("vscode").load()
require("ayu").setup({
	mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
	overrides = {
		Normal = { bg = "None" },
		ColorColumn = { bg = "None" },
		SignColumn = { bg = "None" },
		Folded = { bg = "None" },
		FoldColumn = { bg = "None" },
		-- CursorLine = { bg = "None" },
		CursorColumn = { bg = "None" },
		WhichKeyFloat = { bg = "None" },
		VertSplit = { bg = "None" },
	},
})

require("vscode").setup({
	-- Enable transparent background
	transparent = true,
})

vim.cmd([[
  colorscheme vscode
]])

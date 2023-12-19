return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("gitsigns").setup()
		local key = vim.keymap
		key.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "show git blame" })
	end,
}

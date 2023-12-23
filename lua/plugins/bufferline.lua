return {
	"akinsho/bufferline.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup()

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Switch to left buffer" })
		keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Switch to left buffer" })
		keymap.set("n", "<leader>x", ":bdelete<CR>", { desc = "Close current buffer" })
	end,
}

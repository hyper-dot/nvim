return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      -- keybinds for navigation in lspsaga window
      scroll_preview = { scroll_down = "<C-d>", scroll_up = "<C-u>" },

      -- use enter to open file with definition preview
      definition = {
        edit = "<CR>",
      },
      ui = {
        colors = {
          normal_bg = "#1e1e1e",
        },
      },
      lightbulb = {
        enable = false,
        enable_in_insert = false,
        sign = false,
        virtual_text = false,
      },
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- optional
    "nvim-tree/nvim-web-devicons", -- optional
  },
}

return {
  "olexsmir/gopher.nvim",
  ft = "go",
  config = function(_, opts)
    require("gopher").setup(opts)
  end,
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
  keys = {
    { "<leader>gsj", "<cmd>GoTagAdd json<cr>", silent = true },
    { "<leader>gsy", "<cmd>GoTagAdd yaml<cr>", silent = true },
  },
}

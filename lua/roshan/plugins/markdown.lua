return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g["mkdp_theme"] = "light"
    vim.g["mkdp_browser"] = "firefox"
    vim.g["mkdp_auto_close"] = 0
  end,
  ft = { "markdown" },
}

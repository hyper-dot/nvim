local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
   "nvim-lua/plenary.nvim", -- required by many packages

   -- Vscode colorscheme
   {
      "Mofiqul/vscode.nvim",
      lazy = false,
      config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme vscode]])
      end,
   },
   -- Devicons
   "nvim-tree/nvim-web-devicons",

   --Buffer line that shows tabs
   "akinsho/bufferline.nvim",

   -- Colorizer that colorize hash colors
   "norcalli/nvim-colorizer.lua",

   -- File explorer
   {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      dependencies = {
         "nvim-lua/plenary.nvim",
         "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
         "MunifTanjim/nui.nvim",
      },
   },
   -- Lua line status line
   {
      "nvim-lualine/lualine.nvim",
      requires = { "nvim-tree/nvim-web-devicons", opt = true },
      config = function ()
        require('lualine').setup()
      end
   },

   -- fuzzy finding w/ telescope
   { "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- fuzzy finder
   {
    'glepnir/dashboard-nvim',
     event = 'VimEnter',
   },
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {'nvim-treesitter/nvim-treesitter'},
})

return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              startuphire = "~/Notes/neorg/startuphire",
              javascript = "~/Notes/neorg/javascript",
              golang = "~/Notes/neorg/golang",
              general = "~/Notes/neorg/general",
            },
          },
        },
      },
    })
  end,
}

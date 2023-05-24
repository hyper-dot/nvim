local status, neotree = pcall(require, 'neo-tree')

if not status then
   return 
end

neotree.setup({
   window = {
      position = "left",
      width = 30,
   },
   mappings = {
     ["l"] = "open",
     ["h"] = "close_node"
   },
   filesystem = {
     filtered_items = {
       hide_dotfiles = false,
       hide_gitignored = false,
       hide_by_pattern = {
         "*/node_modules/*"
       }
     }
   }
})


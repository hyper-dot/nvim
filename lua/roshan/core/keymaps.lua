-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

----------------- General Keymaps -------------------

-- use jj to exit insert mode
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>h", ":nohl<CR>", { desc = "Clear search highlights" })

-- clear search highlights
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save changes" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit neovim" })

-- LazyGit
keymap.set("n", "<leader>gg", ":LazyGit <CR>", { desc = "Lazy Git" }) -- increment

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Bufferline
keymap.set("n", "<leader>x", ":bdelete<CR>", { desc = "Close current buffer" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- NeoTree
keymap.set("n", "<leader>e", "<cmd>Neotree<CR>", { desc = "Open File Explorer" }) --  move current buffer to new tab

-- Markdown Preview
keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Open File Explorer" }) --  move current buffer to new tab

-- Neorg
--Neorg
keymap.set("n", "<leader>ns", ":Neorg workspace startuphire<CR>", { desc = "Open Neorg Startuphire Workspace" })
keymap.set("n", "<leader>nj", ":Neorg workspace javascript<CR>", { desc = "Open Neorg JavaScript Workspace " })
keymap.set("n", "<leader>ngo", ":Neorg workspace golang<CR>", { desc = "Open Neorg Golang Workspace " })
keymap.set("n", "<leader>nge", ":Neorg workspace general<CR>", { desc = "Open Neorg General Workspace" })

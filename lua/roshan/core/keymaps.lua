-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

----------------- General Keymaps -------------------

local opts = { silent = true }

-- use jj to exit insert mode
opts.desc = "Exit insert mode with jj"
keymap.set("i", "jj", "<ESC>", opts)

-- clear search highlights
opts.desc = "Clear search highlights"
keymap.set("n", "<leader>h", ":nohl<CR>", opts)

-- clear search highlights
opts.desc = "Save changes"
keymap.set("n", "<leader>w", ":w<CR>", opts)

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')
opts.desc = "Quit Neovim"
keymap.set("n", "<leader>q", ":q<CR>", opts)

-- LazyGit
opts.desc = "LazyGit"
keymap.set("n", "<leader>gg", ":LazyGit <CR>", opts) -- increment

-- increment/decrement numbers
opts.desc = "Increment number"
keymap.set("n", "<leader>+", "<C-a>", opts) -- increment
opts.desc = "Decrement number"
keymap.set("n", "<leader>-", "<C-x>", opts) -- decrement

-- Bufferline
opts.desc = "Close current buffer"
keymap.set("n", "<leader>x", ":bdelete<CR>", opts)
opts.desc = "Move to Previous Buffer"
keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
opts.desc = "Move to Next Buffer"
keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)

-- window management
opts.desc = "Split window vertically"
keymap.set("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
opts.desc = "Split window horizontally"
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
opts.desc = "Make splits equal size"
keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height

-- NeoTree
opts.desc = "Open file explorer"
keymap.set("n", "<leader>e", "<cmd>Neotree reveal toggle<CR>", opts)

-- Markdown Preview
opts.desc = "Markdown Toggle"
keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", opts)

-- GitSigns
opts.desc = "Togle current line blame"
keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts)

--Neorg
keymap.set("n", "<leader>ns", ":Neorg workspace startuphire<CR>", { desc = "Open Neorg Startuphire Workspace" })
keymap.set("n", "<leader>nj", ":Neorg workspace javascript<CR>", { desc = "Open Neorg JavaScript Workspace " })
keymap.set("n", "<leader>ngo", ":Neorg workspace golang<CR>", { desc = "Open Neorg Golang Workspace " })
keymap.set("n", "<leader>nge", ":Neorg workspace general<CR>", { desc = "Open Neorg General Workspace" })

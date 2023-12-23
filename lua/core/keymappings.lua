local k = vim.keymap
vim.g.mapleader = " "

-- In insert mode
local opts = {
	silent = true,
}

k.set("n", "x", '"_x')
k.set("n", ";", ":")

k.set("n", "<leader>w", ":w<CR>")
k.set("n", "<leader>h", ":nohlsearch<CR>", opts) -- removes highlight from searched text
k.set("n", "<leader>q", ":q<CR>", opts) -- Quits neovim
k.set("n", "<leader>Q", ":q!<CR>") -- Force quits wihout saving
k.set("n", "<C-h>", "^")
k.set("n", "<C-l>", "g_")
k.set("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
k.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
k.set("n", "<leader>s", ":vsplit<CR>")
k.set("n", "<leader><S-s>", ":split<CR>")

-- In insert mode
k.set("i", "jj", "<ESC>") -- Exits insert mode
k.set("i", "<C-h>", "<C-o>h")
k.set("i", "<C-l>", "<C-o>l")

-- Plugin specifications
-- Tmux Navigation
k.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
k.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
k.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
k.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)

-- Nvim Tree File explorer
k.set("n", "<leader>e", ":Neotree reveal toggle<CR>", opts)

-- Bufferline
k.set("n", "<leader>x", ":bdelete<CR>", opts)

-- Lazygit
k.set("n", "<leader>gg", ":LazyGit<CR>", opts)

-- Makdown preview
k.set("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", opts)

-- GitSigns
k.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts)

-- Twilight
k.set("n", "<leader>te", ":Twilight<CR>", opts)


return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			[[                                                             ]],
			[[                                                             ]],
			[[                                                             ]],
			[[                                                             ]],
			[[,---,---,---,---,---,---,---,---,---,---,---,---,---,-------,]],
			[[| ~ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | [ | ] | <-    |]],
			[[|---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|]],
			[[| ->| | " | , | . | P | Y | F | G | C | R | L | / | = |  \  |]],
			[[|-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|]],
			[[| Caps | A | O | E | U | I | D | H | T | N | S | - |  Enter |]],
			[[|------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|]],
			[[| Shift  | ; | Q | J | K | X | B | M | W | V | Z |  shift   |]],
			[[|------,-',--'--,'---'---'---'---'---'---'-,-'---',--,------|]],
			[[| ctrl |  | alt |           Space          | alt  |  | ctrl |]],
			[['------'--'-----'--------------------------'------'--'------']],
			[[                                                             ]],
			[[                                                             ]],
			[[                                                             ]],
			[[                                                             ]],
			[[                                                             ]],
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC e", "  > Toggle file explorer", "<cmd>Neotree toggle<CR>"),
			dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}

local db = require('dashboard')
db.setup({
  theme = 'doom',
  config = {
    header = {
--      [[                    ]],
--      [[                    ]],
--      [[  (_    ,_,    _)   ]],
--      [[  / `'--) (--'` \   ]],
--      [[ /  _,-'\_/'-,_  \  ]],
--      [[/.-'     "     '-.\ ]],
--      [[                    ]],
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
    }, --your header
    center = {
      {
        icon = ' ',
        desc = 'New Files',
        key = 'n',
        keymap = 'n',
        action = 'Telescope oldfiles'
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc_hl = 'String',
        desc = 'Recent Files',
        key = 'r',
        keymap = 'r',
        action = 'Telescope oldfiles'
      },
      {
        icon = ' ',
        desc = 'Find File',
        key_hl = 'Number',
        key = 'f',
        keymap = 'f',
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc_hl = 'String',
        desc = 'Search Text',
        key = 't',
        keymap = 't',
        action = 'Telescope live_grep'
      },
      {
        icon = ' ',
        desc = 'Search Text',
        key = 'c',
        keymap = 'c',
        action = 'e ~/.config/nvim/init.lua'
      }



    },
    footer = {}  --your footer
  }
})


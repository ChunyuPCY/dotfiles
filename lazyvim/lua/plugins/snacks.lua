local function header_banner()
  if vim.fn.has("mac") == 1 and vim.g.neovide then
    return [[
    wWw  wWw  wWw     .-.    wW  Ww      \\\  /// 
    (O)_ (O)  (O)   c(O_O)c  (O)(O)  /)  ((O)(O)) 
    / __)/ )  ( \  ,'.---.`,  (..) (o)(O) | \ ||  
   / (  / /    \ \/ /|_|_|\ \  ||   //\\  ||\\||  
  (  _) | \____/ || \___.--.| _||_ |(__)| || \ |  
  / /   '. `--' .`'. `---\) \(_/\_)/,-. | ||  ||  
  )/      `-..-'    `-...(_.'     -'   ''(_/  \_) 
    ]]
  else
    return [[
         _      _                  _              _          _                   _          
        /\ \   /\_\               /\ \           /\ \       / /\                /\ \     _  
       /  \ \ / / /         _    /  \ \          \ \ \     / /  \              /  \ \   /\_\
      / /\ \ \\ \ \__      /\_\ / /\ \ \         /\ \_\   / / /\ \            / /\ \ \_/ / /
     / / /\ \_\\ \___\    / / // / /\ \ \       / /\/_/  / / /\ \ \          / / /\ \___/ / 
    / /_/_ \/_/ \__  /   / / // / /  \ \_\     / / /    / / /  \ \ \        / / /  \/____/  
   / /____/\    / / /   / / // / / _ / / /    / / /    / / /___/ /\ \      / / /    / / /   
  / /\____\/   / / /   / / // / / /\ \/ /    / / /    / / /_____/ /\ \    / / /    / / /    
 / / /        / / /___/ / // / /__\ \ \/ ___/ / /__  / /_________/\ \ \  / / /    / / /     
/ / /        / / /____\/ // / /____\ \ \/\__\/_/___\/ / /_       __\ \_\/ / /    / / /      
\/_/         \/_________/ \/________\_\/\/_________/\_\___\     /____/_/\/_/     \/_/       
    ]]
  end
end

return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        header = header_banner(),
      },
    },
    indent = {
      indent = {
        priority = 1,
        enabled = true, -- enable indent guides
        char = "│",
        only_scope = false, -- only show indent guides of the scope
        only_current = true, -- only show indent guides in the current window
        -- hl = "SnacksIndent8", ---@type string|string[] hl groups for indent guides
        -- can be a list of hl groups to cycle through
        -- hl = {
        --   "SnacksIndent1",
        --   "SnacksIndent2",
        --   "SnacksIndent3",
        --   "SnacksIndent4",
        --   "SnacksIndent5",
        --   "SnacksIndent6",
        --   "SnacksIndent7",
        --   "SnacksIndent8",

        -- },
      },
      ---@class snacks.indent.Scope.Config: snacks.scope.Config
      scope = {
        enabled = true, -- enable highlighting the current scope
        priority = 200,
        char = "│",
        underline = false, -- underline the start of the scope
        only_current = true, -- only show scope in the current window
        -- hl = "SnacksIndentScope", ---@type string|string[] hl group for scopes
        hl = {
          "RainbowRed",
          "RainbowYellow",
          "RainbowBlue",
          "RainbowOrange",
          "RainbowGreen",
          "RainbowViolet",
          "RainbowCyan",
        },
      },
      chunk = {
        -- when enabled, scopes will be rendered as chunks, except for the
        -- top-level scope which will be rendered as a scope.
        enabled = false,
        -- only show chunk scopes in the current window
        only_current = true,
        priority = 200,
        -- hl = "SnacksIndentChunk", ---@type string|string[] hl group for chunk scopes
        hl = {
          "RainbowRed",
          "RainbowYellow",
          "RainbowBlue",
          "RainbowOrange",
          "RainbowGreen",
          "RainbowViolet",
          "RainbowCyan",
        },
        char = {
          corner_top = "┌",
          corner_bottom = "└",
          -- corner_top = "╭",
          -- corner_bottom = "╰",
          horizontal = "─",
          vertical = "│",
          arrow = ">",
        },
      },
      blank = {
        -- priority = 199,
        -- char = " ",
        char = "·",
        hl = "SnacksIndentBlank", ---@type string|string[] hl group for blank spaces
      },
    },
    image = {
      enabled = false,
    },
    terminal = {
      win = {
        wo = {
          winbar = "",
        },
      },
    },
    picker = {
      sources = {
        explorer = {
          hidden = true, -- Show hidden files in Explorer
          -- layout = {
          --   layout = {
          --     position = "right", -- Show the explorer to the right
          --   },
          -- },
        },
      },
      ui_select = true, -- replace `vim.ui.select` with the snacks picker
    },
  },
}

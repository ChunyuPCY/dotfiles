return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {
    flavour = "mocha",
    transparent_background = true,
    term_colors = true,
    custom_highlights = function()
      return {
        RainbowRed = { fg = "#E06C75" },
        RainbowYellow = { fg = "#E5C07B" },
        RainbowBlue = { fg = "#61AFEF" },
        RainbowOrange = { fg = "#D19A66" },
        RainbowGreen = { fg = "#98C379" },
        RainbowViolet = { fg = "#C678DD" },
        RainbowCyan = { fg = "#56B6C2" },
      }
    end,
    integrations = {
      blink_cmp = true,
    },
  },
}

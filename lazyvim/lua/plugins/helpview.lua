return {
  "OXY2DEV/helpview.nvim",
  lazy = false,
  ft = "help",
  opt = {
    preview = {
      icon_provider = "mini", -- "mini" or "devicons"
    },
  },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      optional = true,
      opts = {
        ensure_installed = {
          "vimdoc",
        },
      },
    },
  },
}

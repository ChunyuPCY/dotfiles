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
      opts = function(_, opts)
        if opts.ensure_installed ~= "all" then
          opts.ensure_installed = require("utils").list_insert_unique(opts.ensure_installed, { "vimdoc" })
        end
      end,
    },
  },
}

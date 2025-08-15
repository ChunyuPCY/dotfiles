return {
  "saghen/blink.cmp",
  dependencies = {
    "moyiz/blink-emoji.nvim",
    "MahanRahmati/blink-nerdfont.nvim",
    "Kaiser-Yang/blink-cmp-avante",
  },
  ---@module 'blink-cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "super-tab",
    },
    signature = { enabled = true },
    completion = {
      trigger = {
        show_in_snippet = false,
      },
      menu = {
        draw = {
          columns = {
            { "kind_icon", "label", "label_description" },
            { "kind", "source_name", gap = 1 },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "emoji", "nerdfont", "avante" },
      providers = {
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 15, -- Tune by preference
          opts = { insert = true }, -- Insert emoji (default) or complete its name
          should_show_items = function()
            return vim.tbl_contains(
              -- Enable emoji completion only for git commits and markdown.
              -- By default, enabled for all file-types.
              { "gitcommit", "markdown" },
              vim.o.filetype
            )
          end,
        },
        nerdfont = {
          module = "blink-nerdfont",
          name = "Nerd Fonts",
          score_offset = 15, -- Tune by preference
          opts = { insert = true }, -- Insert nerdfont icon (default) or complete its name
          should_show_items = function()
            return vim.tbl_contains(
              -- Enable emoji completion only for git commits and markdown.
              -- By default, enabled for all file-types.
              { "lua" },
              vim.o.filetype
            )
          end,
        },
        avante = {
          module = "blink-cmp-avante",
          name = "Avante",
          opts = {
            -- options for blink-cmp-avante
          },
        },
      },
    },
  },
}

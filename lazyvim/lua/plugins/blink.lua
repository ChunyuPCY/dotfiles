return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
      },
      completion = {
        menu = {
          border = "single",
          -- nvim-cmp style menu
          draw = {
            columns = {
              { "kind_icon", "label", "label_description" },
              { "kind", "source_name", gap = 1 },
            },
          },
        },
        documentation = { window = { border = "single" } },
        ghost_text = {
          enabled = true,
        },
      },
      signature = { window = { border = "single" } },
    },
  },
}

return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets", "moyiz/blink-emoji.nvim" },
  version = "*",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "enter",
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
      ["<C-Tab>"] = { "cancel", "fallback" },
    },
    signature = {
      enabled = true,
    },
    sources = {
      default = {
        "lsp",
        "path",
        "snippets",
        "buffer",
        "emoji",
      },
      providers = {
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 15,
        },
      },
    },
    completion = {
      accept = {
        create_undo_point = true,
      },
      ghost_text = {
        enabled = true,
      },
      menu = {
        border = "solid",
        scrollbar = false,
        draw = {
          padding = 2,
          columns = {
            {
              "label",
              "label_description",
              gap = 1,
            },
            {
              "kind_icon",
              "kind",
            },
          },
        },
      },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
  },
  opts_extend = {
    "sources.default",
  },
}

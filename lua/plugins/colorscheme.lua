return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      intergrations = {
        blink_cmp = true,
        mason = true,
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      transparent_background = true,
      flavour = "mocha",
    },
    intergrations = {
      cmp = true,
      gitsign = true,
      nvimtree = true,
      treesitter = true,
    },
  },
}

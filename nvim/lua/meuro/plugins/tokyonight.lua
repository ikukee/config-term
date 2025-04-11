return {
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,

    opts = {
      on_colors = function(colors)
        colors.border = colors.green1
      end,
    },
  },
}

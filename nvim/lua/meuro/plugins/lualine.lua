return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        theme = 'palenight',
        section_separators = '',
        component_separators = ''
      },
      sections = {
        lualine_a = {},
        lualine_b = {
          {"mode"},
          {"location"},
          {"diagnostics"},
        },
        lualine_c = {
          '%=',
          {'filename'},
          {'branch'},
        },
        lualine_x = {},
        lualine_y = {
          { "fileformat" },
          { "hostname" },
        },
        lualine_z = {},

      },
      inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
      },
      tabline = {},
      extensions = {},
    })
  end,
}

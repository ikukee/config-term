return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        theme = 'palenight',
        section_separators = '', -- {left='', right=''},
        component_separators = ''
      },
      sections = {
        lualine_a = {
          { 'mode', right_padding = 2 },
        },
        lualine_b = {
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
          { "hostname", right_padding = 2 },
        },
        lualine_z = {{ 'datetime', style='%p %I:%M' }},

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

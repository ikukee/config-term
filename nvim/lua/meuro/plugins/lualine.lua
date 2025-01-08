return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      options = {
        theme = 'palenight',
        section_separators = {left='', right=''},
        component_separators = ''
      },
      sections = {
        lualine_a = {
          { 'mode' },
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
          { "hostname" },
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

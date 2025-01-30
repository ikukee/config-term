return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local custom_theme = require'lualine.themes.palenight'
    custom_theme.normal.c.bg = "none"
    custom_theme.normal.b.bg = "none"
    custom_theme.visual.b.bg = "none"
    custom_theme.insert.b.bg = "none"
    lualine.setup({
      options = {
        theme = custom_theme,--'palenight',
        section_separators = '', --{ left = '', right = '' },
        component_separators = '', --    
        fmt = string.lower,
      },
      sections = {
        lualine_a = {},
        lualine_b = {
          { 'mode', fmt = function(str) return str:sub(1,1) end },
          {"diagnostics"},
        },
        lualine_c = {
          '%=',
          {'filename'},
          {'branch'},
        },
        lualine_x = {},
        lualine_y = {
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

return {
  "stevearc/conform.nvim",
  event = { "LspAttach", "BufReadPost", "BufNewFile" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        eruby = { "erb_format" },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 2500,
        lsp_fallback = true,
      },
    })
  end,
}

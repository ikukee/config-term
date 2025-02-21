return {
  "mbbill/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc= "undo tree" } )
  end,
}

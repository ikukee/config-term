return {
  "stevearc/oil.nvim",
  --@module 'oil'
  --@type oil.SetupOpts
  --
  --
  opts = {
    columns = {
      "icon",
      --"permissions",
      --"size",
      --"mtime",
    },
    win_options = {
      wrap = false,
      signcolumn = "no",
      cursorcolumn = false,
      foldcolumn = "0",
      spell = false,
      list = false,
      conceallevel = 3,
      concealcursor = "nvic",
    },
    delete_to_trash = true,
    skip_confirm_for_simple_edits = false,
    prompt_save_on_select_new_entry = true,
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = { "actions.show_help", mode = "n" },
      ["<CR>"] = "actions.select",
      ["<Esc>"] = { callback = "actions.close", mode = "n" },
      ["-"] = { "actions.parent", mode = "n" },
      ["_"] = { "actions.open_cwd", mode = "n" },
      ["`"] = { "actions.cd", mode = "n" },
      ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
      ["gs"] = { "actions.change_sort", mode = "n" },
      ["g."] = { "actions.toggle_hidden", mode = "n" },
      ["<C-p>"] = "actions.preview",
      ["gx"] = "actions.open_external",
    },
    preview_win = {
      -- Whether the preview window is automatically updated when the cursor is moved
      update_on_cursor_moved = true,
      -- How to open the preview window "load"|"scratch"|"fast_scratch"
      preview_method = "fast_scratch",
      -- A function that returns true to disable preview on a file e.g. to avoid lag
      disable_preview = function(filename)
        return false
      end,
      -- Window-local options to use for preview window buffers
      win_options = {},
    },
  },
  -- Optional dependencies
  --dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  dependencies = { { "echasnovski/mini.icons", opts = {} } }, -- use if prefer nvim-web-devicons
}

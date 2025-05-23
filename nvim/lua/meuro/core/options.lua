local opt = vim.opt
opt.relativenumber = true
opt.number = true
--require("vim.lsp.health.")
-- tabs & indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.guicursor = "n-v-c-sm:block50,i-ci-ve:ver50,r-cr-o:ver50"
opt.wrap = true
opt.termguicolors = true
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.fillchars = "eob: "
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"
opt.showmode = false
opt.clipboard = "unnamedplus"

opt.splitright = true
opt.splitbelow = true

opt.undofile = true
opt.undolevels = 50
opt.laststatus = 3

-- vim.diagnostic.config {
--   virtual_text = false,
--   signs = false,
--   underline = false,
-- }

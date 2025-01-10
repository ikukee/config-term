local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "meuro.plugins" }, { import = "meuro.plugins.lsp" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})


vim.filetype.add({
  extension = {
    gotmpl = 'gotmpl',
  },
  pattern = {
    [".*/templates/.*%.tpl"] = "helm",
    [".*/templates/.*%.ya?ml"] = "helm",
    ["helmfile.*%.ya?ml"] = "helm",
  },
})

vim.cmd.colorscheme("tokyonight-night")
vim.cmd [[hi! Normal ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! LineNr ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! Folded ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! NonText ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! SpecialKey ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! SignColumn ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! VertSplit ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! EndOfBuffer ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! TablineFill ctermbg=NONE guibg=NONE]]
vim.cmd [[hi! Pmenu ctermbg=NONE ctermfg=NONE guibg=NONE]]
vim.cmd [[hi! FloatBorder ctermbg=NONE ctermfg=NONE guibg=NONE]]
vim.cmd [[hi! NormalFloat ctermbg=NONE ctermfg=NONE guibg=NONE]]
vim.cmd [[hi! TabLine ctermbg=None ctermfg=None guibg=None]]
vim.cmd [[hi! NormalNC ctermbg=None ctermfg=None guibg=None]]

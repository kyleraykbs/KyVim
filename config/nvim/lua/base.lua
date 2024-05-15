vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus' -- Sync clipboard
vim.opt.breakindent = true
vim.opt.undofile = true -- Perminent undo history

vim.g.have_nerd_font = true

-- QOL
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.mouse = "" -- Goodbye mouse...

-- Theme
vim.opt.signcolumn = "no"

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Speed up updates
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- setup splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview?
vim.opt.inccommand = 'split'

vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.opt.hlsearch = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

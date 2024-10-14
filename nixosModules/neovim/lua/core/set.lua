-- set visualbell
vim.opt.visualbell = true

-- enable numbering and show relative numbering
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- set smartindent
vim.opt.smartindent = true

-- set no-warp
vim.opt.wrap = false

-- length indicator
vim.opt.colorcolumn = "100"

-- incremental search
vim.opt.incsearch = true

-- scroll if edge is only 8 lines away
vim.opt.scrolloff = 10
-- vim.opt.scrolloff = 999

-- split to bottom or right as default
vim.opt.splitbelow = true
vim.opt.splitright = true

-- auto-reload files when changed
-- inspired by: https://neovim.discourse.group/t/a-lua-based-auto-refresh-buffers-when-they-change-on-disk-function/2482/5
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

-- force nvim to use system clipboard
-- vim.g.clipboard = {
--   name = 'OSC 52',
--   copy = {
--     ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
--   },
--   paste = {
--     ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
--   }
-- }

-- use conceallevel 1 for obsidian.nvim
vim.opt.conceallevel = 1



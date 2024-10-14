-- remap.lua
-- file for keybinding

-- set new leader
vim.g.mapleader = " "

-- shortcut for switching out of file
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- shortcuts for split navigation
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- make Y behave like D, C, etc.
vim.keymap.set("n", "Y", "y$")

-- keep jumps centerd
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<c-d>", "<c-d>zzzv")
vim.keymap.set("n", "<c-u>", "<c-u>zzzv")
vim.keymap.set("n", "<c-f>", "<c-f>zzzv")
vim.keymap.set("n", "<c-b>", "<c-b>zzzv")

-- shortcuts for creating a terminal
-- vim.keymap.set("n", "", "")

-- shortcuts for navigation in terminal
-- \ hast to be escaped (\\) for lua strings
-- vim.keymap.set("t", "<esc>", "<c-\\><c-N>")
-- vim.keymap.set("t", "<c-h>", "<c-\\><c-N><c-w>h")
-- vim.keymap.set("t", "<c-j>", "<c-\\><c-N><c-w>j")
-- vim.keymap.set("t", "<c-k>", "<c-\\><c-N><c-w>k")
-- vim.keymap.set("t", "<c-l>", "<c-\\><c-N><c-w>l")

-- vnoremap J :m '>+1<CR>gv=gv
-- vnoremap K :m '<-2<CR>gv=gv
-- inoremap <C-j> <esc>:m .+1<CR>== i
-- inoremap <C-k> <esc>:m .-2<CR>== i
-- nnoremap <leader>j :m .+1<CR>==
-- nnoremap <leader>k :m .-2<CR>==


-- shortcut for copying text
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>Y', '"*y')
vim.keymap.set('n', '<leader>P', '"*p')

-- shortcut to enable spellchecking
vim.keymap.set('n', '<F9>', ':set spell!<cr>')

-- vim sleuth
-- fugitive
-- kickstart.nvim

local opts = { buffer = bufnr, noremap = true, silent = true }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'T', vim.lsp.buf.hover, opts)



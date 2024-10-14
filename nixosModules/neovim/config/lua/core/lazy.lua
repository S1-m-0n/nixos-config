local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({import = "plugins"})

--[[
require("lazy").setup({

  -- comment.nvim
  {
    'numToStr/Comment.nvim',
    opts = { 
      -- add any options here
    },
    lzy = false,
  },

  -- surround.vim
  'tpope/vim-surround',

  -- treesitter
  'nvim-treesitter/nvim-treesitter',

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- telescope-fzf-native.nvim
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    requires = { 'nvim-telescope/telescope.nvim' }
  },

  -- vim-fugitive
  {'tpope/vim-fugitive'},

  -- gruvbox theme
  -- {"ellisonleao/gruvbox.nvim", priority = 1000 },

  -- mini.animate
  { 'echasnovski/mini.animate', version = '*' },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }, 
  },

  ---- LSP config with lsp-zero
  --
  --- Uncomment these if you want to manage LSP servers from neovim
  -- {'williamboman/mason.nvim'},
  -- {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

})
]]

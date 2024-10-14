return {

  -- gruvbox theme
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme gruvbox]])
    end,
  },

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

  -- vim tmux navigator
  {
  "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  }

  -- scala metals
  -- {
  --   'scalameta/nvim-metals',
  --   requires = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     require('nvim-metals')
  --   end,
  -- },

}

return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/OneDrive/Documents/ObsidianVault/ObsidianVault',
      },
    },
  },
  ui = {
    enable = true,
    conceallevel = 1,
  }
}

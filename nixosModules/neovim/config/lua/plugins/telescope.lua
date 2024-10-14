return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()


      -- require('telescope').setup()

      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>ff', 
        function()
          builtin.find_files({ hidden = true })
        end, 
        {}
      )
      vim.keymap.set('n', '<leader> ', builtin.buffers, {})

      -- live grep of contents of files
      -- requires ripgrep
      vim.keymap.set('n', '<leader>/', builtin.live_grep, {})

    end,
  },
}

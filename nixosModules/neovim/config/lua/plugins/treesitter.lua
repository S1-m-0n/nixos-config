return {
  'nvim-treesitter/nvim-treesitter',

  config = function ()
    require('nvim-treesitter.configs').setup {

      -- manage treesitter directly through nix
      -- ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "latex" },
      -- sync_install = false,
      -- auto_install = true,
      ensure_installed = {},
      auto_install = false,

      highlight = { enable = true },
      indent = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>", -- set to `false` to disable one of the mappings
          node_incremental = "<C-space>",
          node_decremental = "<bs>",
          -- scope_incremental = "grc",
        },
      },

    }
  end,

}

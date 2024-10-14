return {

  -- to support nvim lsp as a completion source
  'hrsh7th/cmp-nvim-lsp',

  -- snippet engine
  {
    'L3MON4D3/LuaSnip',
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },

  -- actual completion plugin
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp')
      -- local cmp_action = require('lsp-zero').cmp_action()

      cmp.setup{
        mapping = cmp.mapping.preset.insert{
          -- `enter` to confrim completion
          ['<CR>'] = cmp.mapping.confirm({select = false}),

          -- `ctrl+space` to trigger completion menu
          ['<C-Space>'] = cmp.mapping.complete(),

          -- `ctrl+e` to abbort completion
          ['<C-e>'] = cmp.mapping.abort(),

          -- navigation between snippet placeholder
          -- ['<C-j>'] = cmp_action.luasnip_jump_forward(),
          -- ['<C-k>'] = cmp_action.luasnip_jump_backward(),
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }),
      }
    end,
  },
}

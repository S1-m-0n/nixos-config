return {

  -- mason for managing of language servers in neovim
  -- 'williamboman/mason.nvim',
  -- 'williamboman/mason-lspconfig.nvim',

  -- support for lua config of neovim
  'folke/neodev.nvim',

  {
    'neovim/nvim-lspconfig',
    config = function()
    --   require('mason').setup()
    --   require('mason-lspconfig').setup {
    --     ensure_installed = {
    --       'lua_ls',
    --       'pyright',
    --     }
    --   }
    --
    --   local capabilities = require('cmp_nvim_lsp').default_capabilities()
    --
    --   require('mason-lspconfig').setup_handlers {
    --     -- default handler for servernames
    --     function (server_name)
    --       require('lspconfig')[server_name].setup{
    --         capabilities = capabilities,
    --       }
    --     end,
    --     -- additional language specific handerls can be added 
    --     -- for language servers installed via metals
    --     -- see >>:h mason-lspconfig-automatic-server-setup<<
    --   }

      -- other lsps without using metals
      require('neodev').setup()
      require('lspconfig').metals.setup{}

    end,
  },

}

return {
  {
    'folke/neodev.nvim',
    opts = {
      setup_jsonls = false,
      lspconfig = false,
      library = {
        types = true,
      },
    },
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ui = {
        border = 'single',
        icons = {
          package_installed = '✓',
          package_pending = '↻',
          package_uninstalled = '⤫',
        },
      },
    },
  },
  { 'williamboman/mason-lspconfig.nvim' },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local mason_servers = require('mason-lspconfig').get_installed_servers()
      local servers = {
        'clangd',
        'zls',
        unpack(mason_servers),
      }

      local lsp_default = require('config.lsp.default')
      for _, name in ipairs(servers) do
        local ok, config = pcall(require, ('config.lsp.servers.%s'):format(name))
        config = ok and config or {}
        require('lspconfig')[name].setup(lsp_default.with(config))
      end

      require('null-ls').setup(lsp_default.with(require('config.lsp.servers.null_ls')))
    end,
    dependencies = {
      'jose-elias-alvarez/null-ls.nvim',
      'b0o/SchemaStore.nvim',
    },
  },
  {
    'https://git.sr.ht/~p00f/clangd_extensions.nvim',
    opts = {
      inlay_hints = {
        only_current_line = true,
        parameter_hints_prefix = '',
        other_hints_prefix = ' ',
      },
    },
  },
}

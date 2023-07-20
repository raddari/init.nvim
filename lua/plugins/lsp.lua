return {
  {
    'folke/neodev.nvim',
    opts = {
      setup_jsonls = false,
      lspconfig = false,
      library = {
        plugins = { 'nvim-dap-ui' },
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
      local lsp_default = require('config.lsp.default')
      local default_setup = function(server_name)
        return function()
          local ok, config = pcall(require, ('config.lsp.servers.%s'):format(server_name))
          config = ok and config or {}
          require('lspconfig')[server_name].setup(lsp_default.with(config))
        end
      end

      local servers = {
        ['null-ls'] = function()
          require('null-ls').setup(lsp_default.with(require('config.lsp.servers.null_ls')))
        end,
        ['clangd'] = function()
          require('clangd_extensions').setup(require('config.lsp.servers.clangd'))
        end,
        ['zls'] = default_setup('zls'),
      }

      for _, server_name in ipairs(require('mason-lspconfig').get_installed_servers()) do
        if not servers[server_name] then
          servers[server_name] = default_setup(server_name)
        end
      end
      for _, setup in pairs(servers) do
        setup()
      end
    end,
    dependencies = {
      'jose-elias-alvarez/null-ls.nvim',
      'p00f/clangd_extensions.nvim',
      'b0o/SchemaStore.nvim',
    },
  },
}

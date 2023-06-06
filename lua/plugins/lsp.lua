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
      local lsp_default = require('lsp.default')
      local servers = {
        ['null-ls'] = function()
          require('null-ls').setup(lsp_default.with(require('lsp.servers.null_ls')))
        end,
        ['clangd'] = function()
          require('clangd_extensions').setup(require('lsp.servers.clangd'))
        end,
      }

      for _, server_name in ipairs(require('mason-lspconfig').get_installed_servers()) do
        if not servers[server_name] then
          servers[server_name] = function()
            local ok, config = pcall(require, ('lsp.servers.%s'):format(server_name))
            config = ok and config or {}
            require('lspconfig')[server_name].setup(lsp_default.with(config))
          end
        end

        for _, setup in pairs(servers) do
          setup()
        end
      end
    end,
    dependencies = {
      'jose-elias-alvarez/null-ls.nvim',
      'p00f/clangd_extensions.nvim',
      'b0o/SchemaStore.nvim',
    },
  },
}

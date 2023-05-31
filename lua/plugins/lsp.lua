return {
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
  {
    'williamboman/mason-lspconfig.nvim',
    opts = { automatic_installation = true },
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('mason-lspconfig').setup_handlers({
        function(server_name)
          local ok, config = pcall(require, ('lsp.servers.%s'):format(server_name))
          config = ok and config or {}
          require('lspconfig')[server_name].setup(require('lsp.default').with(config))
        end,

        ['clangd'] = function()
          require('clangd_extensions').setup(require('lsp.servers.clangd'))
        end,

        ['rust_analyzer'] = function()
          require('rust-tools').setup(require('lsp.servers.rust_analyzer'))
        end,
      })

      require('null-ls').setup(require('lsp.default').with(require('lsp.servers.null-ls')))
    end,
  },
  { 'p00f/clangd_extensions.nvim' },
  { 'simrat39/rust-tools.nvim' },
  { 'jose-elias-alvarez/null-ls.nvim' },
}

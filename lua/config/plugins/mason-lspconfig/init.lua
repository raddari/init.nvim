return {
  'williamboman/mason-lspconfig.nvim',
  config = function()
    require('config.plugins.mason-lspconfig.setup')
  end,
  after = 'mason.nvim',
}

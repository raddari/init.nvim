return {
  'p00f/clangd_extensions.nvim',
  after = 'nvim-lspconfig',
  config = function()
    require('plugin.clangd_extensions.config')
  end,
}

return {
  'neovim/nvim-lspconfig',
  after = 'mason-lspconfig.nvim',
  config = function()
    require('plugin.lspconfig.config')
  end,
}

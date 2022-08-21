return {
  'neovim/nvim-lspconfig',
  config = function()
    require('plugin.lspconfig.config')
    require('plugin.lspconfig.keymap')
  end,
}

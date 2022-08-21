return {
  'kyazdani42/nvim-tree.lua',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
    require('plugin.tree.config')
    require('plugin.tree.keymap')
  end,
}

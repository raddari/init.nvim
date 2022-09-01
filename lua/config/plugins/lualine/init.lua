return {
  'hoob3rt/lualine.nvim',
  config = function()
    require('config.plugins.lualine.setup')
  end,
  after = require('config.settings.user').theme,
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
}
return {
  'folke/twilight.nvim',
  config = function()
    require('config.plugins.twilight.setup')
  end,
  cmd = { 'Twilight', 'TwilightEnable', 'TwilightDisable' },
}

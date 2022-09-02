local theme = require('config.settings.user').theme

return {
  'rcarriga/nvim-notify',
  config = function()
    require('config.plugins.notify.setup')
  end,
  after = theme,
}

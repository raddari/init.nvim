local current_theme = require('config.settings.theme').current_theme

local plugins = {
  { 'lewis6991/impatient.nvim' },
  { 'nvim-lua/plenary.nvim' },
  require('config.theme.plugins').init(current_theme),
}

return plugins

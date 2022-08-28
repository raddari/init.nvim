local current_theme = require('config.settings.theme').current_theme

local plugins = {
  -- useful prereqs
  { 'lewis6991/impatient.nvim' },
  { 'nvim-lua/plenary.nvim' },
  -- then the colorscheme
  require('config.theme.plugins').init(current_theme),
  -- now the rest
  require('config.plugins.treesitter'),
}

return plugins

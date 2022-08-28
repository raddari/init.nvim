local theme = require('config.settings.user').theme

local plugins = {
  -- useful prereqs
  { 'lewis6991/impatient.nvim' },
  { 'nvim-lua/plenary.nvim' },
  -- then the colorscheme
  require('config.theme.plugins').init(theme),
  -- now the rest
  require('config.plugins.gitsigns'),
  require('config.plugins.lualine'),
  require('config.plugins.telescope'),
  require('config.plugins.treesitter'),
}

return plugins

local theme = require('config.settings.user').theme

local plugins = {
  -- useful prereqs
  { 'lewis6991/impatient.nvim' },
  { 'nvim-lua/plenary.nvim' },
  -- then the colorscheme
  require('config.theme.plugins').init(theme),
  -- now the rest
  { 'mong8se/actually.nvim' },
  require('config.plugins.autopairs'),
  require('config.plugins.cmp'),
  require('config.plugins.cmp-git'),
  require('config.plugins.dressing'),
  require('config.plugins.gitsigns'),
  require('config.plugins.lsp_signature'),
  require('config.plugins.lspconfig'),
  require('config.plugins.lualine'),
  require('config.plugins.luasnip'),
  require('config.plugins.mason'),
  require('config.plugins.mason-lspconfig'),
  require('config.plugins.null-ls'),
  require('config.plugins.telescope'),
  require('config.plugins.treesitter'),
  require('config.plugins.twilight'),
  require('config.plugins.zen-mode'),
}

return plugins

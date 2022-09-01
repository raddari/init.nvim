return {
  'L3MON4D3/LuaSnip',
  config = function()
    require('config.plugins.luasnip.setup')
  end,
  requires = { 'rafamadriz/friendly-snippets' },
}

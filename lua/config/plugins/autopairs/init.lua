return {
  'windwp/nvim-autopairs',
  config = function()
    require('config.plugins.autopairs.setup')
  end,
  after = 'nvim-cmp',
  event = 'InsertEnter',
}

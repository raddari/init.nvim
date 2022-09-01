return {
  'kylechui/nvim-surround',
  config = function()
    require('config.plugins.surround.setup')
  end,
  event = 'BufWinEnter',
}

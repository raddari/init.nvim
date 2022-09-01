return {
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    require('config.plugins.indent-blankline.setup')
  end,
  event = 'BufWinEnter',
}

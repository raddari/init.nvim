return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('config.plugins.gitsigns.setup')
  end,
  opt = true,
  event = 'BufWinEnter',
  requires = { 'nvim-lua/plenary.nvim' },
}

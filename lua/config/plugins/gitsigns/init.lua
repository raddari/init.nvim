return {
  'lewis6991/gitsigns.nvim',
  requires = { 'nvim-lua/plenary.nvim' },
  opt = true,
  event = 'BufWinEnter',
  config = function()
    require('config.plugins.gitsigns.setup')
  end,
}

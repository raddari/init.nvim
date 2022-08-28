return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  requires = {
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
  },
  config = function()
    require('config.plugins.telescope.setup')
    require('config.plugins.telescope.keymap')
  end,
  event = 'BufWinEnter',
}

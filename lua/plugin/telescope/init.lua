return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('plugin.telescope.config')
      require('plugin.telescope.keymap')
    end,
  },
  { 'nvim-telescope/telescope-file-browser.nvim' },
}

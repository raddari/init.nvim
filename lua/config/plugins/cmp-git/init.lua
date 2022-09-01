return {
  'petertriho/cmp-git',
  config = function()
    require('config.plugins.cmp-git.setup')
  end,
  after = { 'nvim-cmp' },
  requires = { 'nvim-lua/plenary.nvim' },
}

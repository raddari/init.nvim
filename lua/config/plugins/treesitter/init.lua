return {
  'nvim-treesitter/nvim-treesitter',
  requires = {
    'windwp/nvim-ts-autotag',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'nvim-treesitter/nvim-treesitter-refactor',
  },
  run = ':TSUpdate',
  config = function()
    require('config.plugins.treesitter.setup')
  end,
}

return {
  'nvim-treesitter/nvim-treesitter',
  run = function()
    require('nvim-treesitter.install').update({ with_sync = true })
  end,
  config = function()
    require('config.plugins.treesitter.setup')
  end,
  requires = {
    'windwp/nvim-ts-autotag',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'nvim-treesitter/nvim-treesitter-refactor',
    -- TODO(raddari): see https://github.com/nvim-treesitter/nvim-treesitter-textobjects/issues/270
    { 'nvim-treesitter/nvim-treesitter-textobjects', commit = '775c5db' },
  },
}

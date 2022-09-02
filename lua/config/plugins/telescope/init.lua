return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    config = function()
      require('config.plugins.telescope.setup')
      require('config.plugins.telescope.keymap')
    end,
    module = 'telescope',
    requires = {
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    },
  },
  -- extensions
  { 'nvim-telescope/telescope-symbols.nvim', after = 'telescope.nvim' },
  {
    'benfowler/telescope-luasnip.nvim',
    config = function()
      require('telescope').load_extension('luasnip')
    end,
    after = 'telescope.nvim',
  },
  {
    'LinArcX/telescope-env.nvim',
    config = function()
      require('telescope').load_extension('env')
    end,
    after = 'telescope.nvim',
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    config = function()
      require('telescope').load_extension('file_browser')
    end,
    after = 'telescope.nvim',
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    config = function()
      require('telescope').load_extension('fzf')
    end,
    after = 'telescope.nvim',
    run = 'make',
  },
  {
    'nvim-telescope/telescope-packer.nvim',
    config = function()
      require('telescope').load_extension('packer')
    end,
    after = 'telescope.nvim',
  },
}

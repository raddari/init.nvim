local M = {
  -- i am speed
  { 'lewis6991/impatient.nvim' },

  -- colorscheme/theme/highlights
  require('theme.plugins').init(),

  -- lots of small fast features
  {
    'echasnovski/mini.nvim',
    config = function()
      require('plugins.config.mini')
    end,
  },

  -- lua plugin dev
  {
    'folke/neodev.nvim',
    config = function()
      require('neodev').setup({ lspconfig = false })
    end,
  },

  -- lsp
  {
    'williamboman/mason.nvim',
    config = function()
      require('plugins.config.mason')
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('plugins.config.mason-lspconfig')
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('plugins.config.lspconfig')
    end,
    requires = {
      { 'p00f/clangd_extensions.nvim' },
      { 'simrat39/rust-tools.nvim' },
    },
  },
  { 'jose-elias-alvarez/null-ls.nvim' },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    config = function()
      require('plugins.config.telescope')
    end,
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kyazdani42/nvim-web-devicons' },
    },
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    config = function()
      require('telescope').load_extension('file_browser')
    end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    config = function()
      require('telescope').load_extension('fzf')
    end,
    run = 'make',
  },

  -- find nerd fonts/emojis
  {
    'ziontee113/icon-picker.nvim',
    config = function()
      require('plugins.config.icon-picker')
    end,
    requires = { 'stevearc/dressing.nvim' },
  },

  -- better floating and input menus
  {
    'stevearc/dressing.nvim',
    config = function()
      require('plugins.config.dressing')
    end,
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('plugins.config.treesitter')
    end,
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  },
  { 'nvim-treesitter/playground' },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'JoosepAlviste/nvim-ts-context-commentstring' },
  { 'windwp/nvim-ts-autotag' },

  -- gitsigns
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('plugins.config.gitsigns')
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  },

  -- peace and serenity
  {
    'folke/twilight.nvim',
    config = function()
      require('twilight').setup()
      vim.keymap.set('n', '<Leader>z', '<Cmd>Twilight<CR>', { desc = 'Toggle Twilight' })
    end,
  },
  {
    'folke/zen-mode.nvim',
    config = function()
      require('plugins.config.zen-mode')
    end,
  },
  {
    'levouh/tint.nvim',
    config = function()
      require('plugins.config.tint')
    end,
  },

  -- helpful 
  {
    'folke/which-key.nvim',
    config = function()
      require('plugins.config.which-key')
    end,
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('plugins.config.project')
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },

  -- remember the last colorscheme picked
  { 'raddari/last-color.nvim' },
}

return M

local M = {
  -- colorscheme/theme/highlights
  require('theme.plugins').init(),

  -- remember the last colorscheme picked
  { 'raddari/last-color.nvim' },

  -- lots of small fast features
  {
    'echasnovski/mini.nvim',
    config = function()
      require('plugins.config.mini')
    end,
  },

  -- dim inactive windows
  {
    'levouh/tint.nvim',
    config = function()
      require('plugins.config.tint')
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
      'p00f/clangd_extensions.nvim',
      'simrat39/rust-tools.nvim',
    },
  },
  { 'jose-elias-alvarez/null-ls.nvim' },

  -- completion/snippets
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins.config.cmp')
    end,
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    config = function()
      require('plugins.config.telescope')
    end,
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
    },
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    config = function()
      require('telescope').load_extension('file_browser')
    end,
    requires = { 'nvim-telescope/telescope.nvim' },
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    config = function()
      require('telescope').load_extension('fzf')
    end,
    requires = { 'nvim-telescope/telescope.nvim' },
    run = 'make',
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
    requires = {
      'nvim-treesitter/playground',
      'nvim-treesitter/nvim-treesitter-textobjects',
      'JoosepAlviste/nvim-ts-context-commentstring',
      'windwp/nvim-ts-autotag',
    },
  },

  -- gitsigns
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('plugins.config.gitsigns')
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  },

  -- keymap helper
  {
    'folke/which-key.nvim',
    config = function()
      require('plugins.config.which-key')
    end,
  },

  -- change cwd to project dir
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('plugins.config.project')
    end,
  },
}

return M

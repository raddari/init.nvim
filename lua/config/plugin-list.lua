local theme = require('config.settings.user').theme

local plugins = {
  -- i am speed
  { 'lewis6991/impatient.nvim' },

  -- colorscheme/theme/highlights
  require('config.theme.plugins').init(theme),

  -- lsp
  {
    'williamboman/mason.nvim',
    config = function()
      require('config.plugins.mason')
    end,
  },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  {
    'VonHeikemen/lsp-zero.nvim',
    config = function()
      require('config.plugins.lsp-zero')
    end,
    requires = {
      -- autocomplete
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'petertriho/cmp-git' },
      { 'saadparwaiz1/cmp_luasnip' },
      -- snippets
      { 'rafamadriz/friendly-snippets' },
      { 'L3MON4D3/LuaSnip' },
      -- extensions
      { 'b0o/SchemaStore.nvim' },
      { 'jose-elias-alvarez/nvim-lsp-ts-utils' },
      { 'p00f/clangd_extensions.nvim' },
      { 'simrat39/rust-tools.nvim' },
    },
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('config.plugins.null-ls')
    end,
  },

  -- pretty diagnostics
  {
    'folke/trouble.nvim',
    config = function()
      require('config.plugins.trouble')
    end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  },

  -- function signature help
  {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('config.plugins.lsp_signature')
    end,
  },

  -- pretty notifications
  {
    'rcarriga/nvim-notify',
    config = function()
      require('config.plugins.notify')
    end,
    requires = { 'nvim-telescope/telescope.nvim' },
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    config = function()
      require('config.plugins.telescope')
    end,
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kyazdani42/nvim-web-devicons' },
    },
  },
  { 'nvim-telescope/telescope-symbols.nvim' },
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
  {
    'benfowler/telescope-luasnip.nvim',
    config = function()
      require('telescope').load_extension('luasnip')
    end,
  },
  {
    'LinArcX/telescope-env.nvim',
    config = function()
      require('telescope').load_extension('env')
    end,
  },

  -- better floating and input menus
  {
    'stevearc/dressing.nvim',
    config = function()
      require('config.plugins.dressing')
    end,
  },

  -- confirm file to edit if multiple expansions possible
  { 'mong8se/actually.nvim' },

  -- IDE features
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('config.plugins.cmp')
    end,
    requires = { 'L3MON4D3/LuaSnip' },
  },
  {
    'petertriho/cmp-git',
    config = function()
      require('config.plugins.cmp-git')
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  },
  {
    'L3MON4D3/LuaSnip',
    config = function()
      require('config.plugins.luasnip')
    end,
    requires = { 'rafamadriz/friendly-snippets' },
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require('config.plugins.autopairs')
    end,
  },
  {
    'kylechui/nvim-surround',
    config = function()
      require('config.plugins.surround')
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('config.plugins.indent-blankline')
    end,
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('config.plugins.treesitter')
    end,
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  },
  { 'nvim-treesitter/nvim-treesitter-refactor' },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'JoosepAlviste/nvim-ts-context-commentstring' },
  { 'windwp/nvim-ts-autotag' },

  -- gitsigns
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config.plugins.gitsigns')
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  },

  -- lualine (maybe bufferline?)
  {
    'hoob3rt/lualine.nvim',
    config = function()
      require('config.plugins.lualine')
    end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  },

  -- debugging
  {
    'mfussenegger/nvim-dap',
    config = function()
      -- TODO: configure
    end,
  },
  { 'Pocco81/dap-buddy.nvim' },

  -- peace and serenity
  {
    'folke/twilight.nvim',
    config = function()
      require('config.plugins.twilight')
    end,
  },
  {
    'folke/zen-mode.nvim',
    config = function()
      require('config.plugins.zen-mode')
    end,
  },

  -- helpful 
  {
    'folke/which-key.nvim',
    config = function()
      -- TODO: add keymaps with register
      require('which-key').setup()
    end,
  },
  {
    'folke/todo-comments.nvim',
    config = function()
      -- TODO: config
      require('todo-comments').setup()
    end,
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      -- TODO: configure
      require('project_nvim').setup()
    end,
  },
  {
    'glepnir/dashboard-nvim',
    config = function()
      -- TODO: configure
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      -- TODO: configure
      require('colorizer').setup()
    end,
  },
}

return plugins

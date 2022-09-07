local packerspecs = {
  -- i am speed
  { 'lewis6991/impatient.nvim' },

  -- colorscheme/theme/highlights
  require('theme.plugins').init(),

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
      { 'b0o/SchemaStore.nvim' },
      { 'jose-elias-alvarez/nvim-lsp-ts-utils' },
      { 'p00f/clangd_extensions.nvim' },
      { 'simrat39/rust-tools.nvim' },
    },
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('plugins.config.null-ls')
    end,
  },

  -- pretty diagnostics
  {
    'folke/trouble.nvim',
    config = function()
      require('plugins.config.trouble')
    end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  },

  -- function signature help
  {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('plugins.config.lsp_signature')
    end,
  },

  -- pretty notifications
  {
    'rcarriga/nvim-notify',
    config = function()
      require('plugins.config.notify')
    end,
    requires = { 'nvim-telescope/telescope.nvim' },
  },

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
      require('plugins.config.dressing')
    end,
  },

  -- IDE features
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('plugins.config.cmp')
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
      { 'rcarriga/cmp-dap' },
    },
  },
  {
    'petertriho/cmp-git',
    config = function()
      require('plugins.config.cmp-git')
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  },
  {
    'L3MON4D3/LuaSnip',
    config = function()
      require('plugins.config.luasnip')
    end,
    requires = { 'rafamadriz/friendly-snippets' },
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require('plugins.config.autopairs')
    end,
  },
  {
    'kylechui/nvim-surround',
    config = function()
      require('plugins.config.surround')
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('plugins.config.indent-blankline')
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
  { 'nvim-treesitter/nvim-treesitter-refactor' },
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

  -- lualine (maybe bufferline?)
  {
    'hoob3rt/lualine.nvim',
    config = function()
      require('plugins.config.lualine')
    end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  },

  -- debugging/terminal
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('plugins.config.toggleterm')
    end,
    tag = '*',
  },
  {
    'mfussenegger/nvim-dap',
    config = function()
      require('plugins.config.dap')
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    config = function()
      require('plugins.config.dap-ui')
    end,
    requires = { 'mfussenegger/nvim-dap' },
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    config = function()
      require('plugins.config.dap-virtual-text')
    end,
    requires = {
      { 'mfussenegger/nvim-dap' },
      { 'nvim-treesitter/nvim-treesitter' },
    },
  },

  -- peace and serenity
  {
    'folke/twilight.nvim',
    config = function()
      require('plugins.config.twilight')
    end,
  },
  {
    'folke/zen-mode.nvim',
    config = function()
      require('plugins.config.zen-mode')
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
    'folke/todo-comments.nvim',
    config = function()
      require('plugins.config.todo-comments')
    end,
    requires = { 'nvim-lua/plenary.nvim' },
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('plugins.config.Comment')
    end,
  },
  {
    'sudormrfbin/cheatsheet.nvim',
    config = function()
      require('plugins.config.cheatsheet')
    end,
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    },
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('plugins.config.project')
    end,
  },
  -- confirm file to edit if multiple expansions possible
  { 'mong8se/actually.nvim' },
  {
    'goolord/alpha-nvim',
    config = function()
      require('plugins.config.alpha')
    end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('plugins.config.colorizer')
    end,
  },
  {
    'declancm/cinnamon.nvim',
    config = function()
      require('plugins.config.cinnamon')
    end,
  },
}

return packerspecs

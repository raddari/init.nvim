return {
  'VonHeikemen/lsp-zero.nvim',
  config = function()
    require('config.lsp')
  end,
  requires = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Autocompletion
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/nvim-cmp' },
    { 'petertriho/cmp-git' },
    { 'saadparwaiz1/cmp_luasnip' },

    -- Snippets
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },

    -- Extensions
    { 'b0o/SchemaStore.nvim' },
    { 'jose-elias-alvarez/nvim-lsp-ts-utils' },
    { 'p00f/clangd_extensions.nvim' },
    { 'simrat39/rust-tools.nvim' },
  },
  event = 'BufWinEnter',
}

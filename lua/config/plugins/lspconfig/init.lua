return {
  'neovim/nvim-lspconfig',
  config = function()
    require('config.lsp')
  end,
  event = 'BufWinEnter',
  requires = {
    'b0o/SchemaStore.nvim',
    'jose-elias-alvarez/nvim-lsp-ts-utils',
    'p00f/clangd_extensions.nvim',
    'simrat39/rust-tools.nvim',
  },
  after = 'mason-lspconfig.nvim',
}

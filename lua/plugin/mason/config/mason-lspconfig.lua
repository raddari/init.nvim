require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = {
    'sumneko_lua',
    'rust_analyzer',
    'clangd',
    'cmake',
    'jsonls',
    'pyright',
    'taplo',
  },
})

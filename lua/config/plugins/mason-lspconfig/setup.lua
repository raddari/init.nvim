require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = {
    'clangd',
    'jsonls',
    'rust_analyzer',
    'sumneko_lua',
    'taplo',
  },
})

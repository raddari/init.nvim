require('mason-lspconfig').setup({
  ensured_installed = {
    'clangd',
    'cmake',
    'jsonls',
    'marksman',
    'pyright',
    'rust_analyzer@nightly',
    'sumneko_lua',
    'taplo',
    'yamlls',
    'zls',
  },
})

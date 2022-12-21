require('mason-lspconfig').setup_handlers({
  function(server_name)
    local ok, config = pcall(require, ('lsp.servers.%s'):format(server_name))
    config = ok and config or {}
    require('lspconfig')[server_name].setup(require('lsp.default').with(config))
  end,

  ['clangd'] = function()
    require('clangd_extensions').setup(require('lsp.servers.clangd'))
  end,

  ['rust_analyzer'] = function()
    require('rust-tools').setup(require('lsp.servers.rust_analyzer'))
  end,
})

require('null-ls').setup(require('lsp.default').with(require('lsp.servers.null-ls')))

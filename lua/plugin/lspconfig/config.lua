local lsp = require('lspconfig')

local servers = {
  clangd = require('lsp.config.clangd'),
  pyright = require('lsp.config.pyright'),
  sumneko_lua = require('lsp.config.sumneko_lua'),
}

for server, config in pairs(servers) do
  lsp[server].setup(config)
end

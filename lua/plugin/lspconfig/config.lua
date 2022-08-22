local lsp = require('lspconfig')
local server_config = require('lsp.server')

local servers = {
  clangd = require('lsp.config.clangd'),
  pyright = server_config.default(),
  sumneko_lua = require('lsp.config.sumneko_lua'),
}

for server, config in pairs(servers) do
  lsp[server].setup(config)
end

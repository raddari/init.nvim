local lspconfig = require('lspconfig')

-- extension servers
for _, extension in ipairs({
  'clangd_extensions',
  'null-ls',
  'rust-tools'
}) do
  lspconfig[extension] = require(extension)
end

local with = function(config)
  return vim.tbl_deep_extend('force', require('lsp.default'), config)
end

local with_default = function()
  return require('lsp.default')
end

local servers = {
  cmake = with_default(),
  sumneko_lua = with(require('lsp.servers.sumneko_lua')),
  taplo = with_default(),
  clangd_extensions = require('lsp.servers.clangd'),
  ['null-ls'] = with(require('lsp.servers.null-ls')),
  ['rust-tools'] = require('lsp.servers.rust_analyzer'),
}

for server, config in pairs(servers) do
  lspconfig[server].setup(config)
end

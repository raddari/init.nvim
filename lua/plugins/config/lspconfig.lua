local lspconfig = require('lspconfig')

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'none' })
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signatureHelp, { border = 'none' })

local default_config = {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(client, bufnr)
    require('lsp.keymap').init(client, bufnr)
  end,
}

require('mason-lspconfig').setup_handlers({
  function(server)
    local config_path = ('lsp.providers.%s'):format(server)
    local ok, server_config = pcall(require, config_path)
    if not ok then
      server_config = {}
    end
    local config = vim.tbl_deep_extend('force', default_config, server_config)
    lspconfig[server].setup(config)
  end,

  ['clangd'] = function()
    local config = vim.tbl_deep_extend('force', default_config, require('lsp.providers.clangd'))
    require('clangd_extensions').setup(config)
  end,

  ['rust_analyzer'] = function()
    local config = vim.tbl_deep_extend('force', default_config, require('lsp.providers.rust_analyzer'))
    require('rust-tools').setup(config)
  end,
})

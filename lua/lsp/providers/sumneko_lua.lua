local config = { settings = {} }

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

config.settings.Lua = {
  diagnostics = {
    globals = { 'vim' },
  },
  format = {
    enable = false,
  },
  hint = {
    enable = true,
    setType = true,
  },
  runtime = {
    path = runtime_path,
    version = 'LuaJIT',
  },
  telemetery = {
    enable = false,
  },
  workspace = {
    library = vim.api.nvim_get_runtime_file('lua', true),
  },
  completion = {
    callSnippet = 'Replace',
  },
}

config.on_attach = function(client, bufnr)
  require('lsp.keymap').init(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
end

return config

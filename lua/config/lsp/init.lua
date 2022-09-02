local lsp = require('lsp-zero')
local icons = require('config.theme.icons')

-- for servers that we want to completely control
local build = {
  clangd = { 'clangd_extensions', config = require('config.lsp.providers.clangd') },
  rust_analyzer = { 'rust-tools', config = require('config.lsp.providers.rust_analyzer') },
}

-- servers that we just want to add some config to
local configure = {
  'jsonls',
}

-- no additional configuration required
local setup = {
  'sumneko_lua',
  'taplo',
}

-- concatenated list of servers
local servers = {}
vim.fn.extend(servers, configure)
vim.fn.extend(servers, setup)
for name, _ in pairs(build) do
  table.insert(servers, name)
end

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = false,
  configure_diagnostics = false,
  cmp_capabilities = true,
  manage_nvim_cmp = false,
  call_servers = 'local',
  sign_icons = {
    error = icons.error,
    warn = icons.warn,
    hint = icons.hint,
    info = icons.info,
  },
})

lsp.ensure_installed(servers)

lsp.nvim_workspace({
  library = vim.api.nvim_get_runtime_file('', true),
})

lsp.on_attach(function(client, bufnr)
  require('config.lsp.keymap').init(client, bufnr)
end)

for server, extension in pairs(build) do
  extension.config.server = lsp.build_options(server, extension.config.server)
end

lsp.setup()

for _, extension in pairs(build) do
  require(extension[1]).setup(extension.config)
end

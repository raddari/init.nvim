local default = require('config.lsp.providers.default')

local config = {}

config.server = {
  cmd = {
    'clangd',
    '--completion-style=bundled',
    '--header-insertion=never',
  },
  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
  on_attach = function(client, bufnr)
    default.on_attach(client, bufnr)
    vim.keymap.set('n', '<Leader>gs', ':ClangdSwitchSourceHeader', { buffer = bufnr })
  end,
}

config.extensions = {
  inlay_hints = {
    only_current_line = true,
    parameter_hints_prefix = ' ',
    other_hints_prefix = ' ',
  },
  memory_usage = {
    border = 'none',
  },
  symbol_info = {
    border = 'none',
  },
}

return config

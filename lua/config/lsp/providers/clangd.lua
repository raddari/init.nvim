local config = {}

config.server = {
  cmd = {
    'clangd',
    '--completion-style=bundled',
    '--header-insertion=never',
    '--offset-encoding=utf-16',
  },
  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
  on_attach = function(client, bufnr)
    require('config.lsp.keymap').init(client, bufnr)
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

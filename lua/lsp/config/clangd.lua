local config = {}

config.cmd = {
  'clangd',
  '--completion-style=bundled',
  '--cross-file-rename',
  '--header-insertion=never',
}

config.init_options = {
  clangdFileStatus = true,
  usePlaceholders = true,
  completeUnimported = true,
  semanticHighlighting = true,
}

return require('lsp.server').with(config)

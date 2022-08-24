local config = {}

config.cmd = {
  'clangd',
  '--completion-style=bundled',
  '--header-insertion=never',
}

config.init_options = {
  clangdFileStatus = true,
  usePlaceholders = true,
  completeUnimported = true,
  semanticHighlighting = true,
}

return config

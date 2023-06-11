local config = {}

config.root_dir = require('lspconfig.util').root_pattern('build.zig', 'zls.json', '.git')

return config

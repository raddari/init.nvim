local config = {
  root_dir = require('lspconfig.util').root_pattern('build.zig', 'build.zig.zon', 'zls.json', '.git'),
}

return config

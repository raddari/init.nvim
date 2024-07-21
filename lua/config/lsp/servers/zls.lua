local config = {
  root_dir = require('lspconfig.util').root_pattern('build.zig', 'build.zig.zon', 'zls.json', '.git'),
  settings = {
    zls = {
      enable_autofix = true,
    },
  },
}

return config

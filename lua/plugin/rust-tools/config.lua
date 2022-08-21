local rt = require('rust-tools')

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      require('plugin.rust-tools.keymap').apply(_, bufnr)
    end,
  }
})

local null_ls = require('null-ls')

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

local config = {
  sources = {
    diagnostics.fish,
    formatting.fish_indent,
    formatting.stylua.with({
      condition = function(util)
        return util.root_has_file({ 'stylua.toml', '.stylua.toml' })
      end,
    }),
  },
}

return config

local null_ls = require('null-ls')

local code_actions = null_ls.builtins.code_actions
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
  on_attach = require('lsp.default').on_attach,
  debug = true,
}

return config

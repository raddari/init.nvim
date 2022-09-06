local null_ls = require('null-ls')

local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover
local completion = null_ls.builtins.completion

local config = {
  on_attach = function(client, bufnr)
    require('lsp.keymap').init(client, bufnr)
  end,
}

config.sources = {
  code_actions.gitsigns,
  diagnostics.fish,
  formatting.fish_indent,
  formatting.stylua.with({
    condition = function(util)
      return util.root_has_file({ 'stylua.toml', '.stylua.toml' })
    end,
  }),
}

null_ls.setup(config)

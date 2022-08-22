local null_ls = require('null-ls')

local formatter = {
  'fish_indent',
  'stylua',
}

local diagnostic = {
  'fish',
}

local registered_sources = {}
for builtin, sources in pairs({
  formatting = formatter,
  diagnostics = diagnostic,
}) do
  for _, source in ipairs(sources) do
    local config = require('plugin.null-ls.with')[source] or {}
    source = null_ls.builtins[builtin][source].with(config)
    table.insert(registered_sources, source)
  end
end

null_ls.setup({ sources = registered_sources })

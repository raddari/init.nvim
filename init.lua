local modules = {
  'settings',
  'plugins',
  'theme',
}

for _, module in ipairs(modules) do
  local ok, err = require(module)
  if not ok then
    vim.notify(('Error loading submodule %s:\n\n%s'):format(module, err))
  end
end

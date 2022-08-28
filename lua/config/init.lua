local mods = {
  'config.compiled',
  'config.plugins.packer',
  'config.settings',
}

for _, mod in ipairs(mods) do
  local ok, err = pcall(require, mod)
  if mod == 'config.compiled' and not ok then
    vim.notify('Run :PackerCompile!', vim.log.levels.WARN)
  elseif not ok then
    error(('Error loading %s:\n\n%s'):format(mod, err))
  end
end

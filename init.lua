do
  local ok, _ = pcall(require, 'impatient')
  if not ok then
    vim.notify('impatient.nvim not installed', vim.log.levels.WARN)
  end
end

local ok, err = pcall(require, 'config')
if not ok then
  error(('Error loading config:\n\n%s'):format(err))
end

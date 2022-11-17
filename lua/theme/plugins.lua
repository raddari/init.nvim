local M = {}

local get_config = function(spec, name)
  if spec.config then
    return spec.config
  end
  local ok, res = pcall(require, ('theme.config.%s'):format(name))
  if ok then
    return res.config
  end
  return function() end
end

M.supported_themes = {
  catppuccin = 'catppuccin/nvim',
  kanagawa = 'rebelot/kanagawa.nvim',
  nightfox = 'edeneast/nightfox.nvim',
  starry = 'ray-x/starry.nvim',
  tundra = 'sam4llis/nvim-tundra',
}

M.init = function()
  local packerspecs = {}
  for name, spec in pairs(M.supported_themes) do
    if type(spec) == 'string' then
      local location = spec
      spec = { location }
    end
    spec.as = spec.as or name
    spec.config = get_config(spec, name)
    table.insert(packerspecs, spec)
  end
  return packerspecs
end

return M

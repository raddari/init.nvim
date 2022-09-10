local M = {}

M.supported_themes = {
  catppuccin = 'catppuccin/nvim',
  everforest = 'sainnhe/everforest',
  gruvbox = 'sainnhe/gruvbox-material',
  kanagawa = 'rebelot/kanagawa.nvim',
  nightfox = 'edeneast/nightfox.nvim',
  nord = 'shaunsingh/nord.nvim',
  tokyonight = 'folke/tokyonight.nvim',
}

M.init = function()
  local packerspecs = {}
  for name, spec in pairs(M.supported_themes) do
    if type(spec) == 'string' then
      local location = spec
      spec = { location }
    end
    spec.as = spec.as or name
    spec.config = spec.config or require(('theme.config.%s'):format(name)).config
    table.insert(packerspecs, spec)
  end
  return packerspecs
end

return M

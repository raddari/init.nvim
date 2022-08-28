local theme = require('config.settings.user').theme
local supported_themes = require('config.theme.plugins').supported_themes
local colors = {}

for name, _ in pairs(supported_themes) do
  if theme == name then
    colors = require(('config.theme.integrated.%s'):format(theme)).colors()
  end
end

return colors

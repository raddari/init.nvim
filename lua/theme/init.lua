local theme = require('last-color').recall() or 'kanagawa'
vim.cmd(('colorscheme %s'):format(theme))

if theme == 'minischeme' then
  local hl = require('theme.util').hl

  hl('Character', { link = 'String' })
  hl('StorageClass', { link = 'Keyword' })

  hl('@type.qualifier', { link = 'Keyword' })
  hl('@variable', { link = 'Operator' })
end

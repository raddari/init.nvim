local colors = require('theme.colors')
local theme = 'kanagawa'

vim.cmd(('colorscheme %s'):format(theme))
colors.init(theme)

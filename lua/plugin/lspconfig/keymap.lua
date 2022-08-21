local diagnostic = vim.diagnostic
local set = vim.keymap.set

set('n', '<Space>e', diagnostic.open_float)
set('n', '<Space>q', diagnostic.setloclist)
set('n', '[d', diagnostic.goto_prev)
set('n', ']d', diagnostic.goto_next)

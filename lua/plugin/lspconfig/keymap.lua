local keymap = vim.keymap

keymap.set('n', '<Space>e', vim.diagnostic.open_float)
keymap.set('n', '<Space>q', vim.diagnostic.setloclist)
keymap.set('n', '[d', vim.diagnostic.goto_prev)
keymap.set('n', ']d', vim.diagnostic.goto_next)

local set = vim.keymap.set
local diagnostic = vim.diagnostic

-- Disable arrow keys
set('', '<Up>', '<Nop>')
set('', '<Down>', '<Nop>')
set('', '<Left>', '<Nop>')
set('', '<Right>', '<Nop>')

-- Buffer splits
set('n', '<Leader>sv', '<Cmd>vsplit<CR>')
set('n', '<Leader>sh', '<Cmd>split<CR>')

-- Remove highlighting
set('n', '<Leader>rh', '<Cmd>noh<CR>')

-- lsp
set('n', '<Space>e', diagnostic.open_float)
set('n', '<Space>q', diagnostic.setloclist)
set('n', '[d', diagnostic.goto_prev)
set('n', ']d', diagnostic.goto_next)

local keymap = vim.keymap

-- Disable arrow keys
keymap.set('', '<Up>', '<Nop>')
keymap.set('', '<Down>', '<Nop>')
keymap.set('', '<Left>', '<Nop>')
keymap.set('', '<Right>', '<Nop>')

-- Buffer splits
keymap.set('n', '<Leader>sv', '<Cmd>vsplit<CR>')
keymap.set('n', '<Leader>sh', '<Cmd>split<CR>')

-- Remove highlighting
keymap.set('n', '<Leader>rh', '<Cmd>noh<CR>')

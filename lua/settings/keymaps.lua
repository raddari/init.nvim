local map = vim.keymap.set
-- disable arrow keys
map({ 'n', 'i', 'v' }, '<Up>', '<Nop>')
map({ 'n', 'i', 'v' }, '<Down>', '<Nop>')
map({ 'n', 'i', 'v' }, '<Left>', '<Nop>')
map({ 'n', 'i', 'v' }, '<Right>', '<Nop>')
-- and backspace
map('i', '<BS>', '<Nop>')
-- splits
map('n', '<Leader>\\', '<Cmd>vsplit<CR>', { desc = 'Vertical split' })
map('n', '<Leader>-', '<Cmd>split<CR>', { desc = 'Horizontal split' })
-- util
map('n', '<Leader>lo', '<Cmd>source %<CR>', { desc = 'Source current file' })

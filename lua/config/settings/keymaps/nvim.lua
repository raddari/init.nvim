local map = vim.keymap.set

-- remove arrow key crutches
map({ 'n', 'i', 'v' }, '<Up>', '<Nop>')
map({ 'n', 'i', 'v' }, '<Down>', '<Nop>')
map({ 'n', 'i', 'v' }, '<Left>', '<Nop>')
map({ 'n', 'i', 'v' }, '<Right>', '<Nop>')
-- use <C-h> or <C-w>
map('i', '<BS>', '<Nop>')

-- window splits
map('n', '<Leader>\\', '<Cmd>vsplit<CR>')
map('n', '<Leader>-', '<Cmd>split<CR>')

-- util
map('n', '<Leader>lo', '<Cmd>source %<CR>')

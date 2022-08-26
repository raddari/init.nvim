local map = vim.keymap.set

map('n', '<Leader>tn', '<Cmd>FloatermNew<CR>')
map('n', '<Leader>tp', '<Cmd>FloatermPrev<CR>')
map('n', '<Leader>tn', '<Cmd>FloatermNext<CR>')
map('n', '<Leader>tt', '<Cmd>FloatermToggle<CR>')
map('t', '<Esc>', '<C-\\><C-n><Cmd>q<CR>')

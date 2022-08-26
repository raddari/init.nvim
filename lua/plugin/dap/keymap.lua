local dap = require('dap')
local map = vim.keymap.set

map('n', '<Leader>o', dap.step_over())
map('n', '<Leader>O', dap.continue())
map('n', '<Leader>i', dap.step_into())
map('n', '<Leader>I', dap.step_out())
map('n', '<Leader>b', dap.toggle_breakpoint())
map('n', '<Leader>B', dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')))
map('n', '<Leader>Bl', dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')))
map('n', '<Leader>dr', dap.repl.open())
map('n', '<Leader>dl', dap.run_last())

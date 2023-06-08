require('util.keymap').set({
  -- splits
  { '<Leader>\\', '<Cmd>vsplit<CR>', desc = 'Vertical split' },
  { '<Leader>-', '<Cmd>split<CR>', desc = 'Horizontal split' },
  -- util
  { '<Leader>lo', '<Cmd>source %<CR>', desc = 'Source current file' },
  { '<Leader>bd', '<Cmd>bd<CR>', desc = 'Remove current buffer' },
  -- compile/build
  {
    '<Leader>m',
    function()
      vim.cmd.make({ silent = true, bang = true })
      vim.cmd.copen()
    end,
    desc = 'Build and open compiler output',
  },
  {
    '<Leader>M',
    function()
      vim.cmd.make()
    end,
    desc = 'Build',
  },
})

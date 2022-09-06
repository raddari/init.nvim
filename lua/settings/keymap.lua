local M = {}

M.nvim = {
  name = 'nvim',
  -- remove arrow key crutches
  ['<Up>'] = { '<Nop>', mode = { 'n', 'i', 'v' } },
  ['<Down>'] = { '<Nop>', mode = { 'n', 'i', 'v' } },
  ['<Left>'] = { '<Nop>', mode = { 'n', 'i', 'v' } },
  ['<Right>'] = { '<Nop>', mode = { 'n', 'i', 'v' } },
  -- remove backspace during insert (use <C-h> or <C-w>)
  ['<BS>'] = { '<Nop>', mode = 'i' },
  ['<Leader>'] = {
    -- splits
    ['\\'] = { '<Cmd>vsplit<CR>', 'Vertical split' },
    ['-'] = { '<Cmd>split<CR>', 'Horizontal split' },
    -- util
    lo = { '<Cmd>source %<CR>', 'Source current file' },
  },
}

M.gitsigns = {
  name = 'gitsigns',
  ['<Leader>v'] = {
    b = { '<Cmd>Gitsigns toggle_current_line_blame<CR>', 'Toggle line blame' },
    d = { '<Cmd>Gitsigns toggle_word_diff<CR>', 'Toggle word diff' },
  },
  ['<M>'] = {
    b = { '<Cmd>Gitsigns toggle_current_line_blame<CR>', 'Toggle line blame' },
    d = { '<Cmd>Gitsigns toggle_word_diff<CR>', 'Toggle word diff' },
    mode = 'i',
  },
}

M.dap = {
  name = 'dap',
  ['<Leader>'] = {
    p = {
      function()
        require('dap').continue()
      end,
      'Continue',
    },
    o = {
      function()
        require('dap').step_over()
      end,
      'Step over',
    },
    O = {
      function()
        require('dap').step_into()
      end,
      'Step into',
    },
    OO = {
      function()
        require('dap').step_out()
      end,
      'Step out',
    },
    b = {
      function()
        require('dap').toggle_breakpoint()
      end,
      'Toggle breakpoint',
    },
    B = {
      function()
        require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))
      end,
      'Conditional breakpoint',
    },
    L = {
      function()
        require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
      end,
      'Set logpoint',
    },
  },
  ['<Leader>d'] = {
    r = {
      function()
        require('dap').repl.open()
      end,
      'Open REPL',
    },
    l = {
      function()
        require('dap').run_last()
      end,
      'Rerun debug',
    },
  },
}

M.twilight = {
  name = 'twilight',
  ['<Leader>z'] = { '<Cmd>Twilight<CR>', 'Toggle Twilight' },
}

M.zenmode = {
  name = 'zen-mode',
  ['<Leader>Z'] = { '<Cmd>ZenMode<CR>', 'Toggle Zen-Mode' },
}

M.notify = {
  name = 'notify',
  ['<Leader>nh'] = {
    function()
      require('notify').history()
    end,
    'Show notification history',
  },
}

M.todo_comments = {
  name = 'todo-comments',
  ['<Leader>f'] = {
    T = { '<Cmd>TodoTelescope<CR>', 'Search for TODOs' },
  },
  ['<Leader>T'] = {
    l = { '<Cmd>TodoLocList<CR>', 'Open TODOs in loclist' },
    q = { '<Cmd>TodoQuickFix<CR>', 'Open TODOs in quickfix' },
    x = { '<Cmd>TodoTrouble<CR>', 'Open TODOs in trouble.nvim' },
  },
}

M.project = {
  name = 'project.nvim',
  ['<Leader>fp'] = { '<Cmd>Telescope projects<CR>', 'Open list of recently opened projects' },
}

M.trouble = {
  name = 'trouble.nvim',
  ['<Leader>x'] = {
    x = { '<Cmd>TroubleToggle<CR>', 'Toggle diagnostics' },
    w = { '<Cmd>TroubleToggle workspace_diagnostics<CR>', 'Toggle workspace diagnostics' },
    d = { '<Cmd>TroubleToggle document_diagnostics<CR>', 'Toggle document diagnostics' },
    l = { '<Cmd>TroubleToggle loclist<CR>', 'Toggle diagnostic loclist' },
    q = { '<Cmd>TroubleToggle quickfix<CR>', 'Toggle quickfix' },
  },
  gR = { '<Cmd>TroubleToggle lsp_references<CR>', 'Toggle references' },
}

M.telescope = {
  name = 'telescope.nvim',
  -- builtin
  ['<Leader>f'] = {
    g = { '<Cmd>Telescope live_grep<CR>', 'Search for strings in workspace files' },
    f = { '<Cmd>Telescope git_files<CR>', 'Search for git versioned files in workspace' },
    a = { '<Cmd>Telescope find_files<CR>', 'Search for files in workspace' },
    b = { '<Cmd>Telescope buffers<CR>', 'Open buffer picker' },
    h = { '<Cmd>Telescope help_tags<CR>', 'Search for help pages' },
    k = { '<Cmd>Telescope keymaps<CR>', 'Search for keymaps' },
    r = { '<Cmd>Telescope registers<CR>', 'Show contents of registers' },
    u = { '<Cmd>Telescope symbols<CR>', 'Open emoji/math symbol picker' },
    -- extensions
    s = { '<Cmd>Telescope luasnip<CR>', 'Open LuaSnip picker' },
    n = { '<Cmd>Telescope notify<CR>', 'Open notification history' },
    ['$'] = { '<Cmd>Telescope env<CR>', 'Open environment variables picker' },
  },
  ['<Leader>t'] = { '<Cmd>Telescope file_browser<CR>' },
  ['<M-u>'] = { '<Cmd>Telescope symbols', 'Open emoji/math symbol picker' },
}

return M

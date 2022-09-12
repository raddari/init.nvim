local M = {}

M.register = function(self, wk)
  for group, keymap in pairs(self) do
    if group ~= 'register' then
      wk.register(keymap)
    end
  end

  -- some stuff that's annoying to do in which-key
  local map = vim.keymap.set
  map({ 'n', 'i', 'v' }, '<Up>', '<Nop>')
  map({ 'n', 'i', 'v' }, '<Down>', '<Nop>')
  map({ 'n', 'i', 'v' }, '<Left>', '<Nop>')
  map({ 'n', 'i', 'v' }, '<Right>', '<Nop>')
  map('i', '<BS>', '<Nop>')
end

M.nvim = {
  name = 'nvim',
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
  ['<Leader>nh'] = { '<Cmd>Notifications<CR>', 'Show notification history' },
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

M.icon_picker = {
  name = 'icon-picker.nvim',
  ['<Leader>f'] = {
    u = { '<Cmd>IconPickerNormal<CR>', 'Insert icon/emoji/nerdfont' },
    U = { '<Cmd>IconPickerYank<CR>', 'Yank icon/emoji/nerdfont' },
  },
  ['<M-u>'] = { '<Cmd>IconPickerInsert<CR>', 'Insert icon/emoji/nerdfont', mode = 'i' },
}

M.telescope = {
  name = 'telescope.nvim',
  -- builtin
  ['<Leader>f'] = {
    g = { '<Cmd>Telescope live_grep<CR>', 'Search for strings in workspace files' },
    f = { '<Cmd>Telescope git_files<CR>', 'Search for git versioned files in workspace' },
    a = { '<Cmd>Telescope find_files<CR>', 'Search for files in workspace' },
    b = { '<Cmd>Telescope buffers<CR>', 'Open buffer picker' },
    c = { '<Cmd>Telescope colorscheme<CR>', 'Open colorscheme picker' },
    h = { '<Cmd>Telescope help_tags<CR>', 'Search for help pages' },
    k = { '<Cmd>Telescope keymaps<CR>', 'Search for keymaps' },
    ['"'] = { '<Cmd>Telescope registers<CR>', 'Show contents of registers' },
    -- extensions
    n = { '<Cmd>Telescope notify<CR>', 'Open notification history' },
  },
  ['<Leader>t'] = { '<Cmd>Telescope file_browser path=%:p:h<CR>', 'File browser' },
}

return M

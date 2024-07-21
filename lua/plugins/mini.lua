local M = {}

M.setup = function()
  require('mini.ai').setup({})
  require('mini.align').setup({})
  require('mini.bracketed').setup({})
  require('mini.bufremove').setup({})
  local miniclue = require('mini.clue')
  miniclue.setup({
    triggers = {
      -- Leader triggers
      { mode = 'n', keys = '<Leader>' },
      { mode = 'x', keys = '<Leader>' },
      -- Built-in completion
      { mode = 'i', keys = '<C-x>' },
      -- `g` key
      { mode = 'n', keys = 'g' },
      { mode = 'x', keys = 'g' },
      -- Marks
      { mode = 'n', keys = "'" },
      { mode = 'n', keys = '`' },
      { mode = 'x', keys = "'" },
      { mode = 'x', keys = '`' },
      -- Registers
      { mode = 'n', keys = '"' },
      { mode = 'x', keys = '"' },
      { mode = 'i', keys = '<C-r>' },
      { mode = 'c', keys = '<C-r>' },
      -- Window commands
      { mode = 'n', keys = '<C-w>' },
      -- `z` key
      { mode = 'n', keys = 'z' },
      { mode = 'x', keys = 'z' },
    },
    clues = {
      miniclue.gen_clues.builtin_completion(),
      miniclue.gen_clues.g(),
      miniclue.gen_clues.marks(),
      miniclue.gen_clues.registers(),
      miniclue.gen_clues.windows(),
      miniclue.gen_clues.z(),
    },
  })
  require('mini.colors').setup({})
  require('mini.comment').setup({
    options = {
      custom_commentstring = function()
        return require('ts_context_commentstring').calculate_commentstring() or vim.bo.commentstring
      end,
    },
    mappings = {
      comment_line = '<Leader>/',
    },
  })
  require('mini.diff').setup({})
  require('mini.extra').setup({})
  require('mini.files').setup({
    mappings = {
      go_in = 'L',
      go_in_plus = 'l',
      go_out = 'H',
      go_out_plus = 'h',
    },
    windows = { width_preview = 50 },
  })
  require('mini.fuzzy').setup({})
  require('mini.git').setup({})
  require('mini.icons').setup({})
  require('mini.indentscope').setup({})
  require('mini.jump').setup({})
  require('mini.jump2d').setup({})
  require('mini.move').setup({})
  require('mini.notify').setup({})
  require('mini.pairs').setup({})
  require('mini.pick').setup({})
  require('mini.sessions').setup({})
  require('mini.splitjoin').setup({})
  require('mini.statusline').setup({
    set_vim_settings = false,
  })
  require('mini.surround').setup({})

  vim.notify = require('mini.notify').make_notify()

  -- keymaps
  local map = vim.api.nvim_set_keymap
  map('n', '<Leader>t', '', {
    desc = 'File tree',
    callback = function()
      if not MiniFiles.close() then
        MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
      end
    end,
  })
  map('n', '<Leader>ff', '<Cmd>Pick files<CR>', { desc = 'Pick from files' })
  map('n', '<Leader>fs', '<Cmd>Pick grep_live<CR>', { desc = 'Live grep' })
  map('n', '<Leader>fb', '<Cmd>Pick buffers<CR>', { desc = 'Pick from buffers' })
  map('n', '<Leader>fe', '<Cmd>Pick explorer<CR>', { desc = 'File explorer' })
  map('n', '<Leader>fh', '<Cmd>Pick help<CR>', { desc = 'Search for help pages' })
  map('n', '<Leader>fd', '<Cmd>Pick diagnostic<CR>', { desc = 'Pick diagnostics' })
  map('n', '<Leader>f"', '<Cmd>Pick registers<CR>', { desc = 'Show registers' })
  map('n', '<Leader>fw', '<Cmd>Pick spellsuggest<CR>', { desc = 'Show spelling suggestions' })
  map('n', '<Leader>fc', '<Cmd>Pick hl_groups<CR>', { desc = 'Show highlight groups' })
  map('n', '<Leader>fgf', '<Cmd>Pick git_files<CR>', { desc = 'Pick versioned files' })
  map('n', '<Leader>fgb', '<Cmd>Pick git_branches<CR>', { desc = 'Pick branches' })
  map('n', '<Leader>fgc', '<Cmd>Pick git_commits<CR>', { desc = 'Pick commits' })
  map('n', '<Leader>fgh', '<Cmd>Pick git_hunks<CR>', { desc = 'Pick hunks' })
end

return M

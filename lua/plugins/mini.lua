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
      -- `[` and `]`
      { mode = 'n', keys = '[' },
      { mode = 'n', keys = ']' },
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
  local hipatterns = require('mini.hipatterns')
  hipatterns.setup({
    highlighters = {
      hex_color = hipatterns.gen_highlighter.hex_color({ style = 'inline' }),
    },
  })
  require('mini.icons').setup({})
  require('mini.indentscope').setup({})
  require('mini.jump').setup({})
  require('mini.jump2d').setup({})
  require('mini.move').setup({})
  require('mini.notify').setup({})
  require('mini.pairs').setup({})
  -- require('mini.pick').setup({})
  require('mini.sessions').setup({})
  require('mini.splitjoin').setup({})
  require('mini.statusline').setup({
    set_vim_settings = false,
  })
  require('mini.surround').setup({})

  vim.notify = require('mini.notify').make_notify()

  -- keymaps
  vim.keymap.set('n', '<Leader>t', '', {
    desc = 'File tree',
    callback = function()
      if not MiniFiles.close() then
        MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
      end
    end,
  })

  vim.api.nvim_create_autocmd('User', {
    pattern = 'MiniFilesActionRename',
    callback = function(event)
      Snacks.rename.on_rename_file(event.data.from, event.data.to)
    end,
  })
end

return M

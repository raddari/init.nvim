return {
  {
    'levouh/tint.nvim',
    opts = {
      tint = -10,
      saturation = 0.4,
      window_ignore_function = function(winid)
        local bufid = vim.api.nvim_win_get_buf(winid)
        local buftype = vim.api.nvim_buf_get_option(bufid, 'buftype')
        local floating = vim.api.nvim_win_get_config(winid).relative ~= ''

        -- Do not tint `terminal` or floating windows, tint everything else
        return buftype == 'terminal' or floating
      end,
    },
  },
  {
    'stevearc/dressing.nvim',
    opts = {
      input = {
        default_prompt = '➤ ',
        border = 'single',
        mappings = {
          i = {
            ['<C-c>'] = 'Close',
            ['<CR>'] = 'Confirm',
            ['<C-p>'] = 'HistoryPrev',
            ['<C-n>'] = 'HistoryNext',
          },
        },
      },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    keys = {
      { '<Leader>vb', '<Cmd>Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle line blame' },
      { '<Leader>vd', '<Cmd>Gitsigns toggle_word_diff<CR>', desc = 'Toggle word diff' },
    },
    opts = {
      current_line_blame_opts = {
        virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
      },
    },
  },
}

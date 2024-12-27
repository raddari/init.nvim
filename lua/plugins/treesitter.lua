local M = {}

M.setup = function()
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      'comment',
      'markdown_inline',
      'regex',
      'vim',
    },
    auto_install = true,
    highlight = { enable = true },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
        },
        selection_modes = {
          ['@parameter.outer'] = 'v', -- charwise
          ['@function.outer'] = 'V', -- linewise
          ['@class.outer'] = '<c-v>', -- blockwise
        },
        include_surrounding_whitespace = true,
      },
      swap = {
        enable = true,
        swap_next = {
          [']vp'] = '@parameter.inner',
          [']vm'] = '@function.outer',
          [']vc'] = '@class.outer',
        },
        swap_previous = {
          ['[vp'] = '@parameter.inner',
          ['[vm'] = '@function.outer',
          ['[vc'] = '@class.outer',
        },
      },
    },
  })
  require('nvim-ts-autotag').setup()
  require('ts_context_commentstring').setup({ enable_autocmd = false })
end

return M

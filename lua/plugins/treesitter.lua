return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'comment',
        'dap_repl',
        'fish',
        'lua',
        'markdown',
        'markdown_inline',
        'regex',
        'rust',
        'vim',
        'zig',
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = false },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '}',
          node_incremental = '}',
          node_decremental = '{',
          scope_incremental = '<Nop>',
          scope_decremental = '<Nop>',
        },
      },
      autotag = { enable = true },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
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
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            [']m'] = '@function.outer',
            [']]'] = '@class.outer',
            [']p'] = '@parameter.outer',
          },
          goto_next_end = {
            [']M'] = '@function.outer',
            [']['] = '@class.outer',
            [']P'] = '@parameter.outer',
          },
          goto_previous_start = {
            ['[m'] = '@function.outer',
            ['[['] = '@class.outer',
            ['[p'] = '@parameter.outer',
          },
          goto_previous_end = {
            ['[M'] = '@function.outer',
            ['[]'] = '@class.outer',
            ['[P'] = '@parameter.outer',
          },
        },
        lsp_interop = {
          enable = true,
          border = 'none',
          peek_definition_code = {
            ['gm'] = '@function.outer',
            ['g['] = '@class.outer',
          },
        },
      },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      'JoosepAlviste/nvim-ts-context-commentstring',
      'windwp/nvim-ts-autotag',
    },
  },
}

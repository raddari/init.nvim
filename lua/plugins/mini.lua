return {
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.comment').setup({
        options = {
          custom_commentstring = function()
            return require('ts_context_commentstring.internal').calculate_commentstring() or vim.bo.commentstring
          end,
        },
        mappings = {
          comment_line = '<C-/>',
        },
      })

      require('mini.statusline').setup({
        set_vim_settings = false,
      })

      require('mini.ai').setup({})
      require('mini.align').setup({})
      require('mini.bracketed').setup({})
      require('mini.bufremove').setup({})
      require('mini.indentscope').setup({})
      require('mini.jump').setup({})
      require('mini.jump2d').setup({})
      require('mini.move').setup({})
      require('mini.pairs').setup({})
      require('mini.splitjoin').setup({})
      require('mini.surround').setup({})
    end,
  },
}

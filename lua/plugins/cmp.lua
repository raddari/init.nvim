return {
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp')
      local snippy = require('snippy')

      cmp.setup({
        enabled = function()
          return vim.api.nvim_buf_get_option(0, 'buftype') ~= 'prompt' or require('cmp_dap').is_dap_buffer()
        end,
        snippet = {
          expand = function(args)
            snippy.expand_snippet(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-u>'] = cmp.mapping.scroll_docs(4),
          ['<CR>'] = cmp.mapping.confirm({ behaviour = cmp.ConfirmBehavior.Replace, select = false }),
          ['<C-Space>'] = function()
            if cmp.visible() then
              cmp.abort()
            else
              cmp.complete()
            end
          end,
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif snippy.can_expand_or_advance() then
              snippy.expand_or_advance()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif snippy.can_jump(-1) then
              snippy.previous()
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        sources = {
          { name = 'nvim_lsp' },
          { name = 'snippy' },
        },
      })

      cmp.setup.filetype({ 'dap-repl', 'dapui_watches', 'dapui_hover' }, {
        enabled = function()
          return require('dap').session().capabilities.supportsCompletionsRequest
        end,
        sources = {
          { name = 'dap' },
        },
      })
    end,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'rcarriga/cmp-dap',
      'dcampos/cmp-snippy',
      'dcampos/nvim-snippy',
      'honza/vim-snippets',
    },
  },
}

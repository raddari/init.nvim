local M = {}

M.setup = function()
  local cmp = require('cmp')
  local snippy = require('snippy')

  cmp.setup({
    enabled = function()
      return vim.bo[0].buftype ~= 'prompt'
    end,
    snippet = {
      expand = function(args)
        snippy.expand_snippet(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-u>'] = cmp.mapping.scroll_docs(-4),
      ['<C-d>'] = cmp.mapping.scroll_docs(4),
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
      { name = 'lazydev', group_index = 0 },
    },
  })
end

return M

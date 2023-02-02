return {
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp')
      local snip = require('luasnip')

      cmp.setup({
        snippet = {
          expand = function(args)
            snip.lsp_expand(args.body)
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
            elseif snip.expand_or_jumpable() then
              snip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif snip.jumpable(-1) then
              snip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        },
      })
    end,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
  },
}

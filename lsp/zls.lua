return {
  cmd = { 'zls' },
  root_markers = { 'build.zig' },
  filetypes = { 'zig', 'zon' },
  single_file_support = true,
  on_attach = function(client, bufnr)
    -- vim.api.nvim_create_autocmd('BufWritePre', {
    --   pattern = { '*.zig', '*.zon' },
    --   callback = function()
    --     vim.lsp.buf.code_action({
    --       context = { only = { 'source.fixAll' } },
    --       apply = true,
    --     })
    --   end,
    -- })
    -- vim.api.nvim_create_autocmd('BufWritePre', {
    --   pattern = { '*.zig', '*.zon' },
    --   callback = function()
    --     vim.lsp.buf.code_action({
    --       context = { only = { 'source.organizeImports' } },
    --       apply = true,
    --     })
    --   end,
    -- })
    require('config.lsp.default').on_attach(client, bufnr)
  end,
}

local lsp = vim.lsp.buf
local lsp_keymap = {
  { 'n', 'gD', lsp.declaration },
  { 'n', 'gd', lsp.definition },
  { 'n', 'gi', lsp.implementation },
  { 'n', 'gr', lsp.references },
  { 'n', 'K', lsp.hover },
  { 'n', '<C-k>', lsp.signature_help },
  { 'n', '<Leader>wa', lsp.add_workspace_folder },
  { 'n', '<Leader>wd', lsp.remove_workspace_folder },
  { 'n', '<Leader>wl', function() print(vim.inspect(lsp.list_workspace_folders())) end },
  { 'n', '<Leader>D', lsp.type_definition },
  { 'n', '<Leader>rn', lsp.rename },
  { 'n', '<Leader>ca', lsp.code_action },
  { 'n', '<Leader>=', lsp.formatting },
}

local M = {}

M.default = function()
  return M.with({})
end

M.with = function(opts)
  local config = {
    on_attach = function(_, bufnr)
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      for _, keymap in ipairs(lsp_keymap) do
        local mode, lhs, rhs = unpack(keymap)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
      end
    end,
  }

  for key, value in pairs(opts) do
    config[key] = value
  end

  return config
end

return M

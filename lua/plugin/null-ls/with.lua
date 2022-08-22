local M = {}

M.stylua = {
  condition = function(u)
    return u.root_has_file({ 'stylua.toml', '.stylua.toml' })
  end,
}

return M

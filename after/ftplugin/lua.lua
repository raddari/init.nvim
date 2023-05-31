vim.b.format_on_save = true
vim.b.format_provider = 'null-ls'

-- https://github.com/sam4llis/nvim-lua-gf/blob/ca712497b2bab6351518917be219e9bfd8d63e4f/after/ftplugin/lua.lua
local opt = vim.opt_local
opt.include = [[\v<((do|load)file|require)[^''"]*[''"]\zs[^''"]+]]
opt.includeexpr = "substitute(v:fname,'\\.','/','g')"
opt.suffixesadd:prepend('.lua')

for _, path in pairs(vim.api.nvim_list_runtime_paths()) do
  opt.path:append(path .. '/lua')
end

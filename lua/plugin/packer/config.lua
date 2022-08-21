local M = {}

M.init = {
  git = {
    clone_timeout = 180,
  },
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end,
  },
  profile = {
    enable = true,
    threshold = 1,
  },
}

M.use = function(plugins)
  return function(use)
    use({ 'wbthomason/packer.nvim', opt = true })
    for _, plugin in ipairs(plugins) do
      use(plugin)
    end
  end
end

return M

return {
  'ms-jpq/coq_nvim',
  branch = 'coq',
  requires = {
    {
      'ms-jpq/coq.artifacts',
      branch = 'artifacts',
    },
    {
      'ms-jpq/coq.thirdparty',
      branch = '3p',
      config = function()
        require('plugin.coq.3p.config')
      end,
    },
  },
  setup = function()
    require('plugin.coq.setup')
  end,
}

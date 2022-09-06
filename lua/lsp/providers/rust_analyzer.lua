local rt = require('rust-tools')

local config = {}

config.server = {
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = {
        command = 'clippy',
      },
    },
  },
  on_attach = function(client, bufnr)
    require('lsp.keymap').init(client, bufnr)
    require('which-key').register({
      ['<Leader>r'] = {
        r = {
          function()
            rt.runnables.runnables()
          end,
          'Open runnables',
        },
        e = {
          function()
            rt.expand_macro.expand_macro()
          end,
          'Expand macro',
        },
        c = {
          function()
            rt.open_cargo_toml.open_cargo_toml()
          end,
          'Open project Cargo.toml',
        },
        p = {
          function()
            rt.parent_module.parent_module()
          end,
          'Goto parent module',
        },
        j = {
          function()
            rt.join_lines.join_lines()
          end,
          'Join lines',
        },
        R = {
          function()
            vim.ui.input({ prompt = 'Enter SSR query: ', default = 'foo($a, $b) ==>> ($a).foo($b)' }, function(input)
              if input then
                rt.ssr.ssr(input)
              end
            end)
          end,
        },
      },
    }, { buffer = bufnr })
  end,
}

config.tools = {
  inlay_hints = {
    only_current_line = true,
    parameter_hints_prefix = ' ',
    other_hints_prefix = ' ',
  },
}

return config

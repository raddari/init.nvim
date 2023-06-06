local continue = function()
  local workspaces = vim.lsp.buf.list_workspace_folders()
  local root_dir = (#workspaces > 0) and workspaces[0] or vim.fn.getcwd()
  local path = string.format('%s/.vscode/launch.json', root_dir)

  if vim.fn.filereadable(path) then
    require('dap.ext.vscode').load_launchjs(path, { lldb = { 'c', 'cpp' } })
  end
  require('dap').continue()
end

return {
  {
    'mfussenegger/nvim-dap',
    keys = {
      {
        '<F5>',
        function()
          continue()
        end,
        desc = 'Start or Continue debugging session',
      },
      {
        '<F8>',
        function()
          require('dap').step_over()
        end,
        desc = 'Step over',
      },
      {
        '<F9>',
        function()
          require('dap').step_into()
        end,
        desc = 'Step into',
      },
      {
        '<F10>',
        function()
          require('dap').step_out()
        end,
        desc = 'Step out',
      },
      {
        '<Leader>db',
        function()
          require('dap').toggle_breakpoint()
        end,
        desc = 'Toggle breakpoint',
      },
      {
        '<Leader>dB',
        function()
          require('dap').set_breakpoint()
        end,
        desc = 'Set breakpoint',
      },
      {
        '<Leader>dl',
        function()
          require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
        end,
        desc = 'Set logpoint',
      },
      {
        '<Leader>dr',
        function()
          require('dap').repl.open()
        end,
        desc = 'Open DAP REPL',
      },
      {
        '<Leader>dd',
        function()
          require('dap').run_last()
        end,
        desc = 'Run last',
      },
      {
        '<Leader>dh',
        function()
          require('dap.ui.widgets').hover()
        end,
        mode = { 'n', 'v' },
        desc = 'DAP hover widget',
      },
      {
        '<Leader>dp',
        function()
          require('dap.ui.widgets').preview()
        end,
        mode = { 'n', 'v' },
        desc = 'DAP preview widget',
      },
      {
        '<Leader>df',
        function()
          local widgets = require('dap.ui.widgets')
          widgets.centered_float(widgets.frames)
        end,
        desc = 'Open Frames widget',
      },
      {
        '<Leader>ds',
        function()
          local widgets = require('dap.ui.widgets')
          widgets.centered_float(widgets.scopes)
        end,
        desc = 'Open Scopes widget',
      },
    },
    config = function()
      local dap = require('dap')
      dap.defaults.fallback.focus_terminal = true
      dap.adapters.lldb = {
        type = 'executable',
        command = 'lldb-vscode',
        name = 'lldb',
      }
    end,
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'LiadOz/nvim-dap-repl-highlights',
    },
  },
}

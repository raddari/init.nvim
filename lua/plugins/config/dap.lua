local dap = require('dap')

local sign = vim.fn.sign_define
sign('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode-12',
  name = 'lldb',
}

local cpp_config = {
  type = 'lldb',
  request = 'launch',
  program = function()
    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  end,
  cwd = '${workspaceFolder}',
  terminal = 'integrated',
}

dap.configurations.cpp = { cpp_config }

dap.configurations.c = dap.configurations.cpp

dap.configurations.rust = {
  vim.tbl_deep_extend('force', cpp_config, {
    program = '${workspaceRoot}/target/debug/${workspaceRootFolderName}',
    cwd = '${workspaceRoot}/target/debug/',
    sourceLanguages = { 'rust' },
  }),
}

-- dap ui

dap.listeners.after.event_initialized['dapui_config'] = function()
  require('dapui').open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
  require('dapui').close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
  require('dapui').close()
end

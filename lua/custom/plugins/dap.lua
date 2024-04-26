return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'leoluz/nvim-dap-go', --[[Go debugger, for any other language put it right below]]
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'
    require('dap-go').setup() --[[ needed for any language debugger ]]
    require('dapui').setup()

    -- below lines makes it so that whenever <leader>dc is pressed nvim-dap-ui turns on

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, { desc = '[d]ebugger: [t]oggle breakpoint' })
    vim.keymap.set('n', '<leader>dc', dap.continue, { desc = '[d]ebugger: [c]ontinue' })
    vim.keymap.set('n', '<leader>do', dap.step_over, { desc = '[d]ebugger: step [o]ver' })
    vim.keymap.set('n', '<leader>di', dap.step_into, { desc = '[d]ebugger: step [i]nto' })
    vim.keymap.set('n', '<leader>ds', dap.step_out, { desc = '[d]ebugger: [s]tep out' })
  end,
}

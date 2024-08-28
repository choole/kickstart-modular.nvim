return {
  'huantrinh1802/khal_endar.nvim',
  version = '*',
  dependencies = { 'MunifTanjim/nui.nvim', 'chrisbra/Colorizer' },
  config = function()
    -- Require
    require('khal_endar').setup()
    -- Optional
    vim.api.nvim_set_keymap('n', '<leader>ki', '<cmd>KLInteract<cr>', { desc = '[K]hal [I]interact', noremap = true, silent = true })
  end,
}

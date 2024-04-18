-- Yo can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ptdewey/yankbank-nvim',
    config = function()
      require('yankbank').setup()
    end,
  },
  {
    'nacro90/numb.nvim',
    config = function()
      require('numb').setup()
    end,
  },
  {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
}

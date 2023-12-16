local overrides = require "custom.configs.overrides"

local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin

  {
    "RRethy/vim-illuminate",
    event = "BufReadPost",
    config = function()
      require "custom.configs.illuminate"
    end,
  },
}

return plugins

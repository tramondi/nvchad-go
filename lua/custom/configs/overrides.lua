local M = {}

M.nvimtree = {
  git = {
    enable = true,
  },

  view = {
    width = 50,
  },

  filters = {
    dotfiles = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M

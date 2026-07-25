return {
  {
    "webhooked/kanso.nvim",
    priority = 1000,

    config = function()
      require("kanso").setup({
        transparent = true,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso-zen",
    },
  },

  {
    "catppuccin/nvim",
    enabled = false,
  },

  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
}

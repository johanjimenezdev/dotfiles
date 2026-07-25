return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",

  opts = {
    options = {
      component_separators = { left = "|", right = "|" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {
        { "branch", icon = "" },
      },
      lualine_x = {
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = function()
            return { fg = Snacks.util.color("Special") }
          end,
        },
        {
          "diff",
          symbols = {
            added = " ",
            modified = " ",
            removed = " ",
          },
          source = function()
            local gitsigns = vim.b.gitsigns_status_dict
            if gitsigns then
              return {
                added = gitsigns.added,
                modified = gitsigns.changed,

                removed = gitsigns.removed,
              }
            end
          end,
        },
      },
    },
  },
}

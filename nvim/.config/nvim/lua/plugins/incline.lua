return {
  "b0o/incline.nvim",
  dependencies = { "nvim-mini/mini.icons" },
  event = "BufReadPre",
  priority = 1200,

  opts = {
    window = {
      margin = {
        vertical = 0,
        horizontal = 0,
      },
    },
    render = function(props)
      local icons = require("mini.icons")
      local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

      if filename == "" then
        filename = "[No Name]"
      end

      local icon, hl = icons.get("file", filename)
      local modified = vim.bo[props.buf].modified

      return {
        { icon .. " ", group = hl },
        { filename },
        modified and { " ●", guifg = "#c4b28a" } or "",
      }
    end,
  },
}

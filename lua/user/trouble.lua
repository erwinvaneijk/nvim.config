local M = {
  "folke/trouble.nvim",
  cmd = "TroubleToggle",
}

function M.config()
  require("trouble").setup {
    position = "bottom",
    height = 12,
    severity = nil,
  }
end

return M

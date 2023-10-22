local M = {
  "wakatime/vim-wakatime"
}

M.config = function()
  require("wakatime").setup {}
end

return M


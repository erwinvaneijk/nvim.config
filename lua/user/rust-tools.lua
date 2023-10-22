local M = {
  "simrat39/rust-tools.nvim",
  event = "VeryLazy",
}

function M.config()
  require('rust-tools').setup {
    inlay_hints = {
      auto = true,
      only_current_line = false,
      show_parameter_hints = true,
    },
    -- debugging stuff
    dap = {
      adapter = {
        type = "executable",
        command = "lldb-vscode",
        name = "rt_lldb",
      },
    },
  }
end

return M

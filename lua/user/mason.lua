local M = {
  "williamboman/mason-lspconfig.nvim",
  commit = "e7b64c11035aa924f87385b72145e0ccf68a7e0a",
  dependencies = {
    "williamboman/mason.nvim",
    "nvim-lua/plenary.nvim",
  },
}

M.servers = {
  "awk_ls",         -- Oldschool AWK
  "clangd",         -- C and C++
  "cmake",          -- CMake configuration
  "hls",            -- Haskell
  "lua_ls",         -- LUA
  "texlab",         -- LaTeX
  "marksman",       -- Markdown
  "pyright",        -- Python
  "sorbet",         -- Ruby
  "bashls",         -- Bash
  "rust_analyzer",  -- Rust
  "jsonls",         -- JSON
  "yamlls",         -- Yaml
}

function M.config()
  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }
  require("mason-lspconfig").setup {
    ensure_installed = M.servers,
  }
end

return M

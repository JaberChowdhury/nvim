local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    cpp = { "clang-format" },
    c = { "clang-format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
  -- formatters = {
  -- ["clang-format"] = {
  -- command = vim.fn.stdpath "data" .. "/mason/bin/clang-format", -- Use Mason's clang-format
  -- args = { "--style=Google" }, -- Enforce Google style without an external file
  -- },
  -- },
}

return options

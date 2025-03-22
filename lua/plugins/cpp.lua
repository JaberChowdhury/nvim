-- ~/.config/nvim/lua/custom/plugins/cpp.lua
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "clangd", "clang-format", "cmake-language-server" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd", "--background-index" },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          root_dir = require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
        },
      },
    },
  },
}

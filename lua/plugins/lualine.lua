return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local LazyVim = require("lazyvim.util")

    -- Define custom components
    local function lsp_status()
      local clients = vim.lsp.get_active_clients({ bufnr = 0 })
      if next(clients) == nil then
        return "No LSP"
      end
      local names = {}
      for _, client in ipairs(clients) do
        table.insert(names, client.name)
      end
      return "LSP: " .. table.concat(names, ", ")
    end

    local function diagnostics()
      local diagnostics = vim.diagnostic.get(0)
      local counts = { error = 0, warn = 0, info = 0, hint = 0 }
      for _, diagnostic in ipairs(diagnostics) do
        counts[diagnostic.severity] = counts[diagnostic.severity] + 1
      end
      return string.format("E:%d W:%d I:%d H:%d", counts.error, counts.warn, counts.info, counts.hint)
    end

    -- Define colors for rectangular shapes
    local colors = {
      bg = "NONE", -- Transparent background
      mode = "#7aa2f7", -- Example: Blue for mode
      branch = "#9ece6a", -- Example: Green for branch
      diff = "#e0af68", -- Example: Yellow for diff
      diagnostics = "#f7768e", -- Example: Red for diagnostics
      lsp = "#bb9af7", -- Example: Purple for LSP
      filename = "#7dcfff", -- Example: Cyan for filename
    }

    -- Update lualine sections
    opts.sections = {
      lualine_a = {
        { "mode", color = { bg = colors.mode, fg = "#000000" } },
      },
      lualine_b = {
        { "branch", color = { bg = colors.branch, fg = "#000000" } },
        { "diff", color = { bg = colors.diff, fg = "#000000" } },
      },
      lualine_c = {
        -- { LazyVim.lualine.pretty_path({ relative = "cwd" }), color = { bg = colors.filename, fg = "#000000" } },
        { "filename", path = 1, symbols = { modified = "[+]", readonly = "󰌾", unnamed = "[No Name]" }, color = { bg = colors.filename, fg = "#000000" } },
      },
      lualine_x = {
        { lsp_status, color = { bg = colors.lsp, fg = "#000000" } },
        { "encoding", color = { bg = colors.bg, fg = "#ffffff" } },
        { "fileformat", color = { bg = colors.bg, fg = "#ffffff" } },
        { "filetype", color = { bg = colors.bg, fg = "#ffffff" } },
      },
      lualine_y = {
        { "progress", color = { bg = colors.bg, fg = "#ffffff" } },
      },
      lualine_z = {
        { "location", color = { bg = colors.bg, fg = "#ffffff" } },
      },
    }

    -- Add extensions for additional integrations
    opts.extensions = { "nvim-tree", "quickfix", "fugitive" }
  end,
}
-- return {
--   "uga-rosa/ccc.nvim",
--   event = "VeryLazy",
--   config = function()
--     require("ccc").setup({
--       -- Optional custom config
--       -- Uncomment to tweak:
--        highlighter = {
--          auto_enable = true,
--        },
--     })
--   end,
-- }

return {
  "brenoprata10/nvim-highlight-colors",
  event = "VeryLazy",
  config = function()
    require("nvim-highlight-colors").setup {
      render = "background", -- or "foreground" or "virtual"
      enable_named_colors = true,
      enable_tailwind = true,
    }
  end,
}

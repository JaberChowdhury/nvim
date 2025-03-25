---@type LazySpec
return {
  "nvzone/showkeys",
  lazy = false,
  cmd = "ShowkeysToggle",
  config = function() vim.cmd "ShowkeysToggle" end,
  opts = {
    timeout = 1,
    maxkeys = 5,
    position = "bottom-center",
  },
}

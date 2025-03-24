return {
  {
    "nvzone/showkeys",
    lazy = false, -- Ensures it loads on startup
    config = function()
      vim.cmd "ShowkeysToggle" -- Automatically run the command
    end,
  },
}

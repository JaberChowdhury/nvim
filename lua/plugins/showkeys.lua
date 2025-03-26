return {
  {
    "nvzone/showkeys",
    lazy = false,
    cmd = "ShowkeysToggle",
    opts = {
      timeout = 1,
      maxkeys = 5,
      -- more opts
    },
    config = function(_, opts)
      require("showkeys").setup(opts)
      vim.cmd "ShowkeysToggle"
    end,
  },
}

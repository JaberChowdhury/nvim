require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    version = "^4", -- Remove version tracking to elect for nightly AstroNvim
    import = "astronvim.plugins",
    opts = { -- AstroNvim options must be set here with the `import` key
      mapleader = " ", -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",", -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true, -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil, -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
      update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
      icons = {
        ActiveLSP = "",
        ActiveTS = "",
        ArrowLeft = "",
        ArrowRight = "",
        BufferClose = "󰅖",
        DapBreakpoint = "",
        DapBreakpointCondition = "",
        DapBreakpointRejected = "",
        DapLogPoint = ".>",
        DapStopped = "󰁕",
        DefaultFile = "󰈙",
        Diagnostic = "󰒡",
        DiagnosticError = "",
        DiagnosticHint = "󰌵",
        DiagnosticInfo = "󰋼",
        DiagnosticWarn = "",
        Ellipsis = "…",
        FileModified = "",
        FileReadOnly = "",
        FoldClosed = "",
        FoldOpened = "",
        FoldSeparator = " ",
        FolderClosed = "",
        FolderEmpty = "",
        FolderOpen = "",
        Git = "󰊢",
        GitAdd = "",
        GitBranch = "",
        GitChange = "",
        GitConflict = "",
        GitDelete = "",
        GitIgnored = "◌",
        GitRenamed = "➜",
        GitStaged = "✓",
        GitUnstaged = "✗",
        GitUntracked = "★",
        LSPLoaded = "",
        LSPLoading1 = "",
        LSPLoading2 = "󰀚",
        LSPLoading3 = "",
        MacroRecording = "",
        Paste = "󰅌",
        Search = "",
        Selected = "❯",
        Spellcheck = "󰓆",
        TabClose = "󰅙",
      },
    },
  },
  { import = "community" },
  { import = "plugins" },
} --[[@as LazySpec]], {
  -- Configure any other `lazy.nvim` configuration options here
  install = { colorscheme = { "astrotheme", "habamax" } },
  ui = { backdrop = 100 },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
} --[[@as LazyConfig]])

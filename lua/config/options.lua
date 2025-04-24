-- lua/config/options.lua

-- Make background transparent in Neovim
local opt = vim.opt

-- Line numbers
opt.number = true -- Show absolute line numbers
opt.relativenumber = true -- Show relative line numbers

-- Tabs & indentation
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 2 -- Number of spaces to use for autoindent
opt.tabstop = 2 -- Number of spaces tabs count for
opt.smartindent = true -- Insert indents automatically
opt.autoindent = true -- Copy indent from current line when starting new one

-- Autocomplete and UI stuff (already handled by LazyVim plugins)
opt.completeopt = { "menuone", "noselect" } -- Completion options

-- Enable mouse support (optional)
opt.mouse = "a"

-- Enable bracket match highlighting
opt.showmatch = true

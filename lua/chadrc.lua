-- -- This file needs to have same structure as nvconfig.lua
-- -- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- -- Please read that file to know all available options :(
---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "catppuccin",
    hl_add = {},
    hl_override = {
        Comment = {italic = true},
        ["@comment"] = {italic = true}
    },
    integrations = {},
    transparency = true,
    theme_toggle = {"onedark", "catppuccin"}
}

M.ui = {
    cmp = {
        icons = true,
        lspkind_text = true,
        style = "default" -- default/flat_light/flat_dark/atom/atom_colored
    },
    telescope = {style = "borderless"}, -- borderless / bordered
    statusline = {
        enabled = true,
        theme = "minimal",
        separator_style = "round"
    },
    -- lazyload it when there are 1+ buffers
    tabufline = {
        enabled = true,
        lazyload = true,
        order = {"treeOffset", "buffers", "tabs", "btns"},
        modules = nil
    }
}
M.nvdash = {
    load_on_startup = true,
    header = {
        "           ▄ ▄                   ",
        "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
        "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
        "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
        "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
        "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
        "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
        "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
        "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
        "                                 ",
  },
}
M.term = {
    winopts = {number = false, relativenumber = false},
    sizes = {sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2},
    float = {
        relative = "editor",
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single"
    }
}

M.lsp = {signature = true}

M.cheatsheet = {
    theme = "grid", -- simple/grid
    excluded_groups = {"terminal (t)", "autopairs", "Nvim", "Opens"} -- can add group name or with mode
}

M.mason = {cmd = true, pkgs = {}}

return M

-- -- -- This file needs to have same structure as nvconfig.lua
-- -- -- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- -- -- Please read that file to know all available options :(
-- ---@type ChadrcConfig
-- local M = {}

-- M.base46 = {
--     theme = "catppuccin",
--     hl_add = {},
--     hl_override = {
--         Comment = {italic = true},
--         ["@comment"] = {italic = true}
--     },
--     integrations = {},
--     transparency = true,
--     theme_toggle = {"onedark", "catppuccin"}
-- }

-- M.ui = {
--     cmp = {
--         icons = true,
--         lspkind_text = true,
--         style = "default", -- default/flat_light/flat_dark/atom/atom_colored
--         format_colors={
--             tailwind=true
--          }
--   },
--     telescope = {style = "borderless"}, -- borderless / bordered
--     -- statusline
--     statusline = {
--         enabled = true,
--         theme = "minimal",
--         separator_style = "round"
--     },
--     -- lazyload it when there are 1+ buffers
--     tabufline = {
--         enabled = true,
--         lazyload = true,
--         order = {"treeOffset", "buffers", "tabs", "btns"},
--         modules = nil
--     }
-- }
-- M.nvdash = {
--     load_on_startup = true,
--     header = {
--         "           ▄ ▄                   ",
--         "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
--         "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
--         "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
--         "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
--         "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
--         "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
--         "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
--         "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
--         "                                 ",
--   },
-- }
-- M.term = {
--     winopts = {number = false, relativenumber = false},
--     sizes = {sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2},
--     float = {
--         relative = "editor",
--         row = 0.3,
--         col = 0.25,
--         width = 0.5,
--         height = 0.4,
--         border = "single"
--     }
-- }

-- M.lsp = {signature = true}

-- M.cheatsheet = {
--     theme = "grid", -- simple/grid
--     excluded_groups = {"terminal (t)", "autopairs", "Nvim", "Opens"} -- can add group name or with mode
-- }

-- M.mason = {cmd = true, pkgs = {}}

-- return M



---@type ChadrcConfig
local M = {}

-- Function to get file size in human-readable format
local function get_file_size()
    local file = vim.fn.expand('%:p')
    if vim.fn.filereadable(file) == 1 then
        local size = vim.fn.getfsize(file)
        if size < 0 then
            return ''
        end
        local suffixes = {'B', 'KB', 'MB', 'GB', 'TB'}
        local i = 1
        while size >= 1024 and i < #suffixes do
            size = size / 1024
            i = i + 1
        end
        return string.format('%.1f%s', size, suffixes[i])
    else
        return ''
    end
end


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
        style = "default", -- default/flat_light/flat_dark/atom/atom_colored
        format_colors={
            tailwind=true
         }
  },
    telescope = {style = "borderless"}, -- borderless / bordered
    -- statusline
    statusline = {
        enabled = true,
        theme = "minimal",
        separator_style = "round",
        -- Add the custom file size component
        components = {
            { provider = get_file_size, hl = { fg = "white", bg = "grey" } },
            -- Add other components as needed
        }
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

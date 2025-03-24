local M = {}

-- extra
local config = require("nvconfig").ui.statusline
local sep_style = config.separator_style
local utils = require "nvchad.stl.utils"

sep_style = (sep_style ~= "round" and sep_style ~= "block") and "block" or sep_style

local sep_icons = utils.separators
local separators = (type(sep_style) == "table" and sep_style) or sep_icons[sep_style]

local sep_l = separators["left"]
local sep_r = "%#St_sep_r#" .. separators["right"] .. " %#ST_EmptySpace#"

-- extra
M.format_size = function(bytes)
  local sizes = { "B", "KB", "MB", "GB", "TB" }
  local i = 1
  while bytes >= 1024 and i < #sizes do
    bytes = bytes / 1024
    i = i + 1
  end
  return string.format("%.2f %s", bytes, sizes[i])
end

M.file_size = function()
  local file_path = vim.fn.expand "%:p"
  if file_path == "" or vim.fn.getfsize(file_path) < 0 then
    return "No File"
  end

  local size = vim.fn.getfsize(file_path)
  local data = M.format_size(size)
  return { "󰮆", data }
end

M.gen_block = function(icon, txt, sep_l_hlgroup, iconHl_group, txt_hl_group)
  return sep_l_hlgroup .. sep_l .. iconHl_group .. icon .. " " .. txt_hl_group .. " " .. txt .. sep_r
end

return M

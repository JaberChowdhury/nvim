-- ~/.config/nvim/lua/customs/filesize.lua

local M = {}

-- Function to get file size in human-readable format
M.get_file_size = function()
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

return M

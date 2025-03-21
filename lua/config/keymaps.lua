local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Save file
keymap.set("n", "<C-s>", ":w<CR>", opts)

-- Close buffer
keymap.set("n", "<C-w>", ":bd<CR>", opts)

-- Find files
keymap.set("n", "<C-p>", ":Telescope find_files<CR>", opts)

-- Find text in files
keymap.set("n", "<C-f>", ":Telescope live_grep<CR>", opts)

-- Open terminal
keymap.set("n", "<C-`>", ":split | term<CR>", opts)

-- Toggle file explorer
keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", opts)

-- Move lines up and down
keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts)
keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

-- Split windows
keymap.set("n", "<C-\\>", ":vsplit<CR>", opts)
keymap.set("n", "<C-_>", ":split<CR>", opts)

-- Navigate between windows
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Cut text in normal mode
keymap.set("n", "<C-x>", '"_d', opts)

-- Cut text in visual mode
keymap.set("v", "<C-x>", '"_d', opts)


-- open terminal 
keymap.set("n", "<C-j>", ":split | term pwsh<CR>", opts)
keymap.set("v", "<C-j>", ":split | term pwsh<CR>", opts)
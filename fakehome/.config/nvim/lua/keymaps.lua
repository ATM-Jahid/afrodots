-- Essential keymaps

local map = vim.api.nvim_set_keymap
options = {noremap = true}

-- split windows
map('n', ',h', ':split<CR>', options)
map('n', ',v', ':vsplit<CR>', options)

-- move to splits
map('n', '<C-h>', ':wincmd h<CR>', options)
map('n', '<C-j>', ':wincmd j<CR>', options)
map('n', '<C-k>', ':wincmd k<CR>', options)
map('n', '<C-l>', ':wincmd l<CR>', options)

-- resize splits
map('n', '<C-A-h>', ':vertical resize -3<CR>', options)
map('n', '<C-A-j>', ':resize +3<CR>', options)
map('n', '<C-A-k>', ':resize -3<CR>', options)
map('n', '<C-A-l>', ':vertical resize +3<CR>', options)

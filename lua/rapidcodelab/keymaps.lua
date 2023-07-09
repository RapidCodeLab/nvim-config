local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('i', 'jj', '<Esc>', {noremap = true})

map('n', '<leader>w', ':w<CR>', default_opts)
map('n', '<leader>q', ':q<CR>', default_opts)

map('n', '<leader>e', ':Neotree float focus<CR>', default_opts)
map('n', '<leader>o', ':Neotree float git_status<CR>', default_opts)

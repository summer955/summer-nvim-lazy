--systemctl 
vim.o.termguicolors = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.signcolumn = "yes"
--Tagbar
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true })
--undotree
vim.api.nvim_set_keymap('n', '<F5>', ':UndotreeToggle<CR>', { noremap = true })
--filestree
vim.api.nvim_set_keymap('n', '<leader>t', ':NERDTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>T', ':NERDTreeFind<CR>', { noremap = true })
--fzf
vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'b<C-s>', ':Buffers<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'r<C-s>', ':Rg<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'g<C-s>', ':GFiles?<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 't<C-s>', ':Tags<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'l<C-s>', ':Lines<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'm<C-s>', ':Map<CR>', { noremap = true })

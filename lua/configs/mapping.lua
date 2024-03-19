--systemctl 
vim.o.termguicolors = true
--Tagbar
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true })
--undotree
vim.api.nvim_set_keymap('n', '<F5>', ':UndotreeToggle<CR>', { noremap = true })
--filestree
vim.api.nvim_set_keymap('n', '<leader>t', ':NERDTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>T', ':NERDTreeFind<CR>', { noremap = true })

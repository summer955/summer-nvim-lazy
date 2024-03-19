--systemctl 
vim.o.termguicolors = true
--Tagbar
vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true })
--undotree
vim.api.nvim_set_keymap('n', '<F5>', ':UndotreeToggle<CR>', { noremap = true })

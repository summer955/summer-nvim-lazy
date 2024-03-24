--systemctl
vim.o.termguicolors = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.signcolumn = "yes"
--Tagbar
vim.api.nvim_set_keymap("n", "<F8>", ":TagbarToggle<CR>", { noremap = true })
--undotree
vim.api.nvim_set_keymap("n", "<F5>", ":UndotreeToggle<CR>", { noremap = true })
--filestree
vim.api.nvim_set_keymap("n", "<leader>t", ":NERDTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>T", ":NERDTreeFind<CR>", { noremap = true })
-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
--trouble
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end)
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end)
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end)
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end)
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end)
vim.keymap.set("n", "gR", function()
	require("trouble").toggle("lsp_references")
end)
--move
local map = vim.api.nvim_set_keymap

-- Normal-mode commands
map("n", "<leader>j", ":MoveLine(1)<CR>", {})
map("n", "<leader>k", ":MoveLine(-1)<CR>", {})
-- map('n', '<leader>l', ':MoveHChar(1)<CR>', {})
-- map('n', '<leader>h', ':MoveHChar(-1)<CR>', {})
map("n", "<leader>wf", ":MoveWord(1)<CR>", {})
map("n", "<leader>wb", ":MoveWord(-1)<CR>", {})

-- Visual-mode commands
map("v", "<leader>j", ":MoveBlock(1)<CR>", {})
map("v", "<leader>k", ":MoveBlock(-1)<CR>", {})
map("v", "<leader>l", ":MoveHBlock(1)<CR>", {})
map("v", "<leader>h", ":MoveHBlock(-1)<CR>", {})

--ale
vim.api.nvim_set_keymap("n", "<leader><F7>", ":ALEToggle<CR>", { noremap = true })

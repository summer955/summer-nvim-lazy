vim.g.fzf_layout = { window = { width = 0.8, height = 0.6 } }
vim.g.fzf_colors = { fg = { 'fg', 'Normal' }, bg = { 'bg', 'Normal' }, hl = { 'fg', 'Comment' }, ['fg+'] = { 'fg', 'CursorLine', 'CursorColumn', 'Normal' }, ['bg+'] = { 'bg', 'CursorLine', 'CursorColumn' }, ['hl+'] = { 'fg', 'Statement' } }
vim.g.fzf_preview_window = { 'down:60%:wrap' }

vim.cmd([[command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '/root/.local/share/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)]])

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>f', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})

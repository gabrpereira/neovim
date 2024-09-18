vim.g.maplocalleader = " "
vim.g.mapleader = " "

vim.keymap.set("n", "<leader><Space>", "<CMD>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>e", "<CMD>Neotree focus<CR>")
vim.keymap.set("n", "<leader>w", "<CMD>update<CR>")
vim.keymap.set("n", "<leader>q", "<CMD>q<CR>")
vim.api.nvim_set_keymap('n', '<leader>t', ':vsplit | terminal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

local function disable_arrow_keys()

  -- Mapeamentos para o modo normal
  vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })

  -- Mapeamentos para o modo de Inserção
  vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })

  -- Mapeamentos para o modo de Comando
  vim.api.nvim_set_keymap('c', '<Up>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('c', '<Down>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('c', '<Left>', '<Nop>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('c', '<Right>', '<Nop>', { noremap = true, silent = true })
end

-- Chamar a função ao iniciar
disable_arrow_keys()



require("settings")
require("maps")
require("lazy.lazy")

local function open_welcome_buffer()
  vim.cmd('help')
  vim.cmd('bdelete 1')
end
vim.api.nvim_create_autocmd('VimEnter', {
  callback = open_welcome_buffer,
})


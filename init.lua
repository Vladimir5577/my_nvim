vim.cmd("set number")
vim.cmd("set tabstop=4 softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set autoindent")


require("config.lazy")
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {})




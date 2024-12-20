vim.cmd("set number")
vim.cmd("set tabstop=4 softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set autoindent")


-- for file explorer
vim.cmd("let g:netrw_liststyle = 3")


require("config.lazy")

vim.cmd("colorscheme catppuccin")



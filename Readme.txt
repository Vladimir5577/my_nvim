Make sure that nvim installed =< 0.10 version
    $ nvim --version

// ===================================================

In file explorer tree:
    % ---> create a new file

:h <opt> ---> get help

Keymap.

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab


// ===================================================

Nvim key binding.
-------------------

Lsp:
    Shift + k  ---> hover
    g+d        ---> go to definition

Autocompletion:
    Tab ---> confirm
    C-k ---> previous suggestion
    C-j ---> next suggestion
    C-b ---> scroll_docs(-4),
    C-f ---> scroll_docs(4),
    C-Space ---> show completion suggestions
    C-e ---> close completion window


Telescope:
    Space ff  ---> find file
    Space fg  ---> find grep (text in project)

Neo tree:
    Ctrl + n  ---> toggle tree
    Ctrl + m  ---> find file toggle

Comment:
    gcc ---> line Comment
    gbc ---> block comment

Format code (comform plugin)
    Space + l

Git blame:
    :BlameToggle

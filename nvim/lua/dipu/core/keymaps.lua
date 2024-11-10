vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "<C-n>", "<C-l>", { noremap = true, silent = true })
    end,
})

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

--Imitation of ctrl+enter in vscode
keymap.set("i", "<C-Enter>", "<ESC>o", { desc = "insert newline below for insert mode", noremap = true, silent = true })
keymap.set("n", "<C-Enter>", "o<ESC>", { desc = "insert newline below for normal mode", noremap = true, silent = true })

--Imitation of Ctrl+shift+enter
keymap.set(
    "i",
    "<C-S-Enter>",
    "<ESC>O",
    { desc = "insert newline above for insert mode", noremap = true, silent = true }
)
keymap.set(
    "n",
    "<C-S-Enter>",
    "O<ESC>",
    { desc = "insert newline above for normal mode", noremap = true, silent = true }
)

--ctrl+ h,j,k,l for navigation in insert mode

keymap.set("i", "<C-h>", "<Left>", { desc = "go left in insert mode", noremap = true, silent = true })
keymap.set("i", "<C-j>", "<Down>", { desc = "go down in insert mode", noremap = true, silent = true })
keymap.set("i", "<C-k>", "<Up>", { desc = "go up in insert mode", noremap = true, silent = true })
keymap.set("i", "<C-l>", "<Right>", { desc = "go right in insert mode", noremap = true, silent = true })

--(does not work with ctrl+shift+h in kitty works with C-h but ctrl-h cannot be remapped for anything else)
--keymap.set("i","<C-S-h>","<C-w>",{desc = "delete word in insert mode", noremap = true, silent = true})
--keymap.set("i","<C-d>w","<C-w>",{desc = "delete word in insert mode", noremap = true, silent = true})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

--increment/decrement numbers
--ctrl-a increments numbers
--ctrl-x decrements numbers

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

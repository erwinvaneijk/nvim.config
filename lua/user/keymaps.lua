local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Basic clipboard interaction
keymap({'n', 'x', 'o'}, 'gy', '"+y')
keymap({'n', 'x', 'o'}, 'gp', '+p')

-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Convenient redo
keymap("n", "U", "<C-r>")

-- Go to matching pair
keymap({'n', 'x'}, '<leader>e', '%', opts)

-- moving lines and preserving indentation
keymap('n', '<C-j>', "<cmd>move .+1<cr>==")
keymap('n', '<C-k>', "<cmd>move .-2<cr>==")
keymap('x', '<C-j>', "<esc><cmd>'<,'>move '>+1<cr>gv=gv")
keymap('x', '<C-k>', "<esc><cmd>'<,'>move '>-2<cr>gv=gv")

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

-- Delete in select mode
keymap("s", "<BS>", '<C-g>"_c')
keymap("s", "<M-h>", "<BS>", opts)

-- Navigate between buffers
keymap('n', '[b', '<cmd>bprevious<cr>')
keymap('n', ']b', '<cmd>bnext<cr>')

-- Open new tabpage
keymap('n', '<leader>tn', '<cmd>tabnew<cr>')

-- Navigate between tabpages
keymap('n', '[t', '<cmd>tabprevious<cr>')
keymap('n', ']t', '<cmd>tabnext<cr>')

-- Write file
keymap('n', '<leader>w', '<cmd>write<cr>')

-- Safe quit
keymap('n', '<leader>qq', '<cmd>quitall<cr>')

vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<esc>", "<C-\\><C-N>", term_opts)
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("n", "<leader>t", ":ToggleTerm direction=horizontal<CR>", term_opts)
keymap("n", "<leader>tv", ":ToggleTerm size=60 direction=vertical<CR>", term_opts)
keymap("n", "<leader>tf", ":ToggleTerm direction=float<CR>", term_opts)

-- Telescope --
local tel_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tel_builtin.find_files, {})
vim.keymap.set('n', '<leader>fr', "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD'  })<CR>", {})
vim.keymap.set('n', '<leader>fg', tel_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', tel_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', tel_builtin.help_tags, {})

-- Tagbar --
keymap('n', '<F8>', ':TagbarToggle<CR>', opts)

-- OSC52 --
-- In normal mode, <leader>c is an operator that will copy the given text to the clipboard.
vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, { expr = true })
-- In normal mode, <leader>cc will copy the current line.
vim.keymap.set('n', '<leader>cc', '<leader>c_', { remap = true })
-- In visual mode, <leader>c will copy the current selection.
vim.keymap.set('x', '<leader>c', require('osc52').copy_visual)

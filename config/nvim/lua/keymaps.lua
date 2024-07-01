-- -- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- exit terminal mode
vim.keymap.set('t', '<M-Esc>', '<C-Bslash><C-n>', { noremap = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Kyle training lol.
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<Tab>', '<cmd>:bnext<CR>', { noremap = true })
vim.keymap.set('n', '<S-Tab>', '<cmd>:bprev<CR>', { noremap = true })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.api.nvim_set_keymap('n', '\\', ':Neotree position=float <CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ca1", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>ca2", "<cmd>CellularAutomaton game_of_life<CR>")
vim.keymap.set("n", "<leader>ca3", "<cmd>CellularAutomaton scramble<CR>")

-- -- save current buffer
-- vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>', { noremap = true, silent = true })

-- -- quit current buffer
-- vim.keymap.set('n', '<leader>q', '<Cmd>q<CR>', { noremap = true, silent = true })

-- -- force quit current buffer
-- vim.keymap.set('n', '<leader>Q', '<Cmd>q!<CR>', { noremap = true, silent = true })

-- -- no highlights
-- vim.keymap.set('n', '<leader>h', '<Cmd>noh<CR>', { noremap = true, silent = true })

-- NOTE: [[BASIC KEYMAPS]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>sn', '<cmd>noautocwd w <CR>', { noremap = true })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true })
vim.keymap.set('n', 'dd', '"_dd', { noremap = true, silent = true })
vim.keymap.set('n', 'dw', '"_dw', { noremap = true, silent = true })
vim.keymap.set('n', 'é', '$', { noremap = true, silent = true })
vim.keymap.set('v', 'é', '$', { noremap = true, silent = true })
--vim.keymap.set('v', 'd', '"_d', { noremap = true, silent = true })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', { noremap = true })
vim.keymap.set('n', 'n', 'Nzzzv', { noremap = true })

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', 'resize -2<CR>', { noremap = true })
vim.keymap.set('n', '<C-Down>', 'resize +2<CR>', { noremap = true })
vim.keymap.set('n', '<C-Left>', 'vertical resize -2<CR>', { noremap = true })
vim.keymap.set('n', '<C-Right>', 'vertical resize +2<CR>', { noremap = true })

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true })
vim.keymap.set('n', '<leader>c', ':Bdelete!<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':<cmd> enew <CR>', { noremap = true })

-- Window management
vim.keymap.set('n', '<leader>wv', '<C-w>v', { noremap = true, desc = 'Creates [V]ertical [W]indow' })   -- split window vertically
vim.keymap.set('n', '<leader>wh', '<C-w>s', { noremap = true, desc = 'Creates [H]orizontal [W]indow' }) -- split window horizontally
vim.keymap.set('n', '<leader>wc', ':close<CR>', { noremap = true, desc = '[C]loses current window' })   -- close current split window

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { noremap = true })

-- Indenting
vim.keymap.set('v', '<', '<gv', { noremap = true })
vim.keymap.set('v', '<', '>gv', { noremap = true })

-- Keep last yank
vim.keymap.set('v', 'p', '"_dP', { noremap = true })

-- Diagnostics
vim.keymap.set('n', '<S-j>', vim.diagnostic.open_float, { noremap = true })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = 'rounded', timeout = 50 } -- Adjust timeout (default is high)
)

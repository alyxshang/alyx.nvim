-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Sets a functions with presets
-- to set keymaps.
function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Setting the leader key.
vim.g.mapleader = " "

-- Toggle for Telescope.
map('n', '<leader>f', ':Telescope<CR>')

-- Toggle for "NvimTree".
map('n', '<leader>t', ':NvimTreeToggle<CR>')

-- Toggle for the "LazyVim" plugin
-- view.
map('n', '<leader>l', ':Lazy<CR>')

-- Mapping for copying to the
-- system clipboard.
map('v', '<leader>c', '"+y')

-- Toggle for starting the
-- LSP.
map('n', '<leader>s', ':LspStart<CR>')

-- Disabling arrow keys
-- in "normal" mode.
map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Left>', '<Nop>')
map('n', '<Right>', '<Nop>')

-- Disabling arrow keys
-- in "insert" mode.
map('i', '<Up>', '<Nop>')
map('i', '<Down>', '<Nop>')
map('i', '<Left>', '<Nop>')
map('i', '<Right>', '<Nop>')

-- Disabling arrow keys
-- in "visual" mode.
map('v', '<Up>', '<Nop>')
map('v', '<Down>', '<Nop>')
map('v', '<Left>', '<Nop>')
map('v', '<Right>', '<Nop>')

-- Setting navigation in
-- "normal" mode.
map('n', '<k>', 'k')
map('n', '<j>', 'j')
map('n', '<h>', 'h')
map('n', '<l>', 'l')

-- Setting navigation
-- in "insert" mode.
map('i', '<C-k>', '<Up>')
map('i', '<C-j>', '<Down>')
map('i', '<C-h>', '<Left>')
map('i', '<C-l>', '<Right>')

-- Setting navigation
-- in "visual" mode.
map('v', '<k>', 'k')
map('v', '<j>', 'j')
map('v', '<h>', 'h')
map('v', '<l>', 'l')

-- Setting the "undo"
-- command to "u" in
-- "normal" mode.
map('n', '<u>', ':undo<CR>')

-- Setting the "delete"
-- command to "d" in
-- "visual" mode.
map('v', '<d>', 'x')

-- Commands
-- b -> beginning of word
-- e -> end of word
-- 0 -> start of line
-- ^ -> start of line
-- { -> down a para
-- } -> up a para
-- gg -> top of file.
-- G end of file.

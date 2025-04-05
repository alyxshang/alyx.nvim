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

-- Setting the
-- "move-to-start" of
-- a word keybinding for
-- all modes.
map('n', '<b>', 'b')
map('i', '<C-b>', 'b')
map('v', '<b>', 'b')

-- Setting the "move-to-end"
-- of a word keybinding for 
-- all modes.
map('n', '<e>', 'e')
map('i', '<C-e', 'e')
map('v', '<e>', 'e')

-- Setting the "move-to-start"
-- of a line keybinding for
-- all modes.
map('n', '<s>', '0')
map('i', '<C-s>', '0')
map('v', '<s>', '0')

-- Setting the "move-to-end"
-- of a line keybinding for
-- "normal" and "insert" mode.
map('n', '<t>', '$')
map('i', '<C-t>', '$')
map('v', '<t>', '$')

-- Setting the
-- "move-to-start"
-- of the currrent
-- paragraph keybinding
-- for all modes.
map('n', '<a>', '{')
map('i', '<C-a>', '{')
map('v', '<a>', '{')

-- Setting the
-- "move-to-end"
-- of the currrent
-- paragraph keybinding
-- for all modes.
map('n', '<z>', '}')
map('i', '<C-z>', '}')
map('v', '<z>', '}')

-- Setting the "move-to-start"
-- of the current file keybinding
-- for all modes.
map('n', '<g>', 'gg')
map('i', '<C-g>', 'gg')
map('v', '<g>', 'gg')

-- Setting the "move-to-end" 
-- of the current file keybinding
-- for all modes.
map('n', '<m>', 'G')
map('i', '<C-M>', 'G')
map('v', '<m>', 'G')

-- Setting the "move-one-forward"
-- keybinding for all modes.
map('n', '<w>', 'w')
map('i', '<C-w>', 'w')
map('v', '<w>', 'w')

-- Setting the keybindings to
-- switch tabs.
map('n', '<C-n>', ':bnext<CR>')
map('n', '<C-p>', ':bprev<CR>')

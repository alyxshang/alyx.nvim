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

-- Remapping the escape key
-- for "insert" mode.
map('i', '<Esc>', '<Nop>')
map('i', '<Leader>q', '<Esc>')

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
map('v', 'k', 'k')
map('v', 'j', 'j')
map('v', 'h', 'h')
map('v', 'l', 'l')

-- Setting the "undo"
-- command to "u" in
-- "insert" mode.
map('n', 'u', ':undo<CR>')

-- Setting the command
-- to delete things in
-- "normal" and "visual"
-- modes.
map('v', 'd', 'x')
map('n', 'x', 'x')

-- Setting the
-- "move-to-start" command of
-- a word keybinding for
-- the "normal" and "visual"
-- modes.
map('n', 'b', 'b')
map('v', 'b', 'b')

-- Setting the "move-to-end"
-- command of a word keybinding
-- for the "normal" and "visual"
-- modes.
map('n', 'e', 'e')
map('v', 'e', 'e')

-- Setting the "move-to-start"
-- command of a line keybinding
-- for the "visual" and 
-- "normal" modes.
map('n', 's', '^')
map('v', 's', '^')

-- Setting the "move-to-end" commmand
-- of a line keybinding for the
-- "normal" and "visual" modes.
map('n', 't', '$')
map('v', 't', '$')

-- Setting the
-- "move-to-start"
-- command
-- of the currrent
-- paragraph keybinding
-- for the "visual" and
-- "normal" modes.
map('n', 'a', '{')
map('v', 'a', '{')

-- Setting the
-- "move-to-end"
-- command
-- of the currrent
-- paragraph keybinding
-- for the "visual" and 
-- "normal" modes.
map('n', 'z', '}')
map('v', 'z', '}')

-- Setting the "move-to-start"
-- command of the current
-- file keybinding for the "visual"
-- and "normal" 
-- modes.
map('n', 'g', 'gg')
map('v', 'g', 'gg')

-- Setting the "move-to-end" command
-- of the current file keybinding
-- for the "visual" and "insert" 
-- modes.
map('n', 'm', 'G')
map('v', 'm', 'G')

-- Setting the "move-one-forward"
-- keybinding for the "visual" and
-- "normal" modes.
map('n', 'w', 'w')
map('v', 'w', 'w')

-- Setting the keybindings to
-- switch tabs.
map('n', '<C-n>', ':bnext<CR>')
map('n', '<C-p>', ':bprev<CR>')

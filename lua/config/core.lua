-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Sets some basic settings.
local function setupBasics()
  vim.wo.number = true
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.softtabstop = 2
  vim.wo.relativenumber = true
  vim.opt.swapfile = false
  vim.opt.textwidth = 72
  vim.opt_local.colorcolumn = "72"
end

-- Calling the
-- function.
setupBasics()

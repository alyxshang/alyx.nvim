-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "alyxshang/sakuramaiden.nvim".
return {
  'alyxshang/sakuramaiden.nvim',
  dependencies = {
    'alyxshang/guizhong.nvim'
  },
  config = function()
    vim.opt.background = "dark"
    vim.cmd.colorscheme("sakura")
  end
}

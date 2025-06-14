-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "alyxshang/sakuramaiden.nvim".
return {
  'alyxshang/sakuramaiden.nvim',
  dependencies = {
    'alyxshang/guizhong.nvim'
  },
  config = function()
    require('sakuramaiden').setup()
    vim.cmd.colorscheme("sakuramaiden")
  end
}

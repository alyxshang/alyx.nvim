-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "alyxshang/sakuramaiden.nvim".
return {
  'alyxshang/sakuramaiden.nvim',
  dependencies = {
    {
        'alyxshang/guizhong.nvim',
        version = "v.0.3.0"
    }
  },
  config = function()
    require("sakuramaiden").setup({ transparent = false })
    vim.cmd.colorscheme("sakuramaiden")
  end
}

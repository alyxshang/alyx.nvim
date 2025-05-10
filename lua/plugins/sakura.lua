-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "alyxshang/sakuramaiden.nvim".
return {
  'alyxshang/sakuramaiden.nvim',
  dependencies = {
    {
        'alyxshang/guizhong.nvim',
        version = "v.0.2.0"
    }
  },
  config = function()
    require("sakuramaiden").setup({ transparent = true })
    vim.cmd.colorscheme("sakuramaiden")

  end
}

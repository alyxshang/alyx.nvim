-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "alyxshang/eternity.nvim".
return {
  'alyxshang/eternity.nvim',
  dependencies = {
    {
        'alyxshang/guizhong.nvim',
        version = "v.0.2.0"
    }
  },
  config = function()
    require("eternity").setup({ transparent = true })
    vim.cmd.colorscheme("eternity")
  end
}

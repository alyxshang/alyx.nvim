-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "alyxshang/menhera.nvim".
return {
  'alyxshang/menhera.nvim',
  dependencies = {
    {
        'alyxshang/guizhong.nvim',
        version = "v.0.3.0"
    }
  },
  config = function()
    require("menhera").setup({ transparent = false })
    vim.cmd.colorscheme("menhera")
  end
}

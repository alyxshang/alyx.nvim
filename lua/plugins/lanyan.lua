-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "alyxshang/emeraldsparrow.nvim".
return {
  'alyxshang/emeraldsparrow.nvim',
  dependencies = {
    {
        'alyxshang/guizhong.nvim',
        version = "v.0.2.0"
    }
  },
  config = function()
    require("emeraldsparrow").setup({ transparent = false })
    vim.cmd.colorscheme("emeraldsparrow")
  end
}

-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "anAcc22/sakura.nvim".
return {
  'anAcc22/sakura.nvim',
  dependencies = {
    'rktjmp/lush.nvim'
  },
  config = function()
    vim.opt.background = "light"
    vim.cmd.colorscheme("sakura")
  end
}

-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "nvim-tree/nvim-tree.lua".
return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require("nvim-tree").setup()
  end
}

-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "akinsho/bufferline.nvim".
return {
  'akinsho/bufferline.nvim',
  version = "*", 
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require("bufferline").setup()
  end
}

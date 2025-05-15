-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "nvim-telescope/telescope.nvim".
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require("telescope").setup()
  end
}

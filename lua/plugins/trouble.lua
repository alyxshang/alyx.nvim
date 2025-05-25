-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "folke/trouble.nvim".
return {
  "folke/trouble.nvim",
  config = function()
    require("trouble").setup(
      {
        cmd = "Trouble"
      }
    )
  end
}

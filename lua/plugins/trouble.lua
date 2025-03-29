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

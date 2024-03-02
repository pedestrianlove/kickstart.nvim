-- File: lua/custom/plugins/centered.lua

return {
  "arnamak/stay-centered.nvim",
  config = function ()
    require("stay-centered").setup()
  end
}

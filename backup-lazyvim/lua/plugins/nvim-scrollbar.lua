return {
  "petertriho/nvim-scrollbar",
  config = function()
    require("scrollbar").setup({
      show = true,
      handle = {
        width = 80,
      },
    })
  end,
}

return {
  "mfussenegger/nvim-dap-python",
  ft = { "python" },
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  keys = {
    {
      "<leader>tdpr",
      function()
        require("dap-python").test_method()
      end,
      desc = "Test Method",
    },
  },
  config = function(_, opts)
    local path = "~/.local/share/nvim/mason/packages/debugpy/bin/python"
    require("dap-python").setup(path)
  end,
}

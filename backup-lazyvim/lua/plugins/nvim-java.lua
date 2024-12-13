-- ~/.config/nvim/lua/plugins/nvim-java.lua

return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-jdtls", -- Necesario como dependencia, pero no lo configures por separado
      "hrsh7th/nvim-cmp", -- Si usas nvim-cmp para autocompletado
      "williamboman/mason.nvim",
    },
    ft = { "java" },
    config = function()
      -- Configura nvim-java antes de lspconfig
      require("java").setup()

      -- Configura jdtls con lspconfig
      require("lspconfig").jdtls.setup({
        cmd = { "jdtls" },
        root_dir = require("lspconfig.util").root_pattern("build.gradle", "pom.xml", ".git"),
      })
    end,
  },
}

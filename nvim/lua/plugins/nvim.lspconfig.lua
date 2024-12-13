return {
  "neovim/nvim-lspconfig",
  opts = function()
    local lspconfig = require("lspconfig")
    lspconfig.pyright.setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      filetypes = { "python" },
    })
  end,
}

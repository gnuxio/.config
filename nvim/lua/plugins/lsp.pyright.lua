return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers = vim.tbl_extend("force", opts.servers or {}, {
      pyright = {
        filetypes = { "python" },
      },
    })
  end,
}

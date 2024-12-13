-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- set up interpreter
vim.g.python3_host_prog = "/opt/homebrew/Caskroom/miniconda/base/envs/nvim/bin/python"

-- set up dap
require("dap-python").setup("/opt/homebrew/Caskroom/miniconda/base/envs/nvim/bin/python")

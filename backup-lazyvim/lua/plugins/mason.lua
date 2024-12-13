return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.python = {
      path = "/usr/local/anaconda3/envs/<nombre_del_entorno>/bin/python", -- Ruta del entorno de Conda
    }
    opts.ensure_installed = {
      -- Puedes añadir más herramientas si lo necesitas
      "debugpy",
    }
    return opts
  end,
}

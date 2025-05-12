return {
  -- Mason
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "ruff",
        "pyright",
        "marksman",
        "yaml-language-server",
        "prettier",
        "clangd",
        "lua-language-server",
      },
    },
  },

  -- Mason LSPConfig
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "lua_ls",
          "clangd",
        },
        automatic_installation = true,
      })
    end,
  },
}

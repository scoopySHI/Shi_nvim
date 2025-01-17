return {
  "williamboman/mason.nvim",
  opts_extend = { "ensure_installed" },
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
}

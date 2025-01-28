return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = { "clangd", "--compile-commands-dir=./build" },
        root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
        on_attach = function(client, bufnr)
          -- Add custom keymaps or other configurations if needed
        end,
      },
    },
  },
}

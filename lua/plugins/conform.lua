return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Use a sub-list to run only the first available formatter
      cpp = { "clang-format" },
      css = { "prettier" },
      dockerfile = { "dockerls", "trim_whitespace" },
      go = { "goimports", "gofmt" },
      html = { "prettier" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      json = { "prettier" },
      lua = { "stylua" },
      tex = { "latexindent" },
      markdown = { "prettier" },
      -- Conform will run multiple formatters sequentially
      python = function(bufnr)
        if require("conform").get_formatter_info("ruff_format", bufnr).available then
          return { "ruff_format" }
        else
          return { "isort", "black" }
        end
      end,
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      yaml = { "prettier" },
      ["*"] = { "injected", "trim_whitespace" },
      ["_"] = { "trim_whitespace" },
    },
    ignore_errors = true,
    -- Map of treesitter language to file extension
    -- A temporary file name with this extension will be generated during formatting
    -- because some formatters care about the filename.
    lang_to_ext = {
      bash = "sh",
      c_sharp = "cs",
      elixir = "exs",
      javascript = "js",
      julia = "jl",
      latex = "tex",
      markdown = "md",
      python = "py",
      ruby = "rb",
      rust = "rs",
      teal = "tl",
      typescript = "ts",
    },
  },
}

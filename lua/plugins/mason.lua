return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "json-lsp",
        "lua-language-server",
        "pyright",
        "ruff-lsp",
        "black",
        "mypy",
        "debugpy",
        "clangd",
        "clang-format",
      },
    },
  },
}

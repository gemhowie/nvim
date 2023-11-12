return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- opts = function()
    --   require("nvim-treesitter.install").prefer_git = true
    -- end,
    opts = {
      install = { prefer_git = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "vv",
          node_incremental = "v",
          scope_incremental = false,
          node_decremental = "V",
        },
      },
    },
  },
}

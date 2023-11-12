return {
  {
    "linux-cultist/venv-selector.nvim",
    -- cmd = { "VenvSelect", "VenvSelectCached", "VenvSelectCurrent" },
    opts = function(_, opts)
      if require("lazyvim.util").has("nvim-dap-python") then
        opts.dap_enabled = true
      end
      return vim.tbl_deep_extend("force", opts, {
        name = {
          "venv",
          ".venv",
          "env",
          ".env",
          "nvim_venv",
        },
      })
    end,
    keys = {
      { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
      { "<leader>cc", "<cmd>:VenvSelectCached<cr>", desc = "Select VirtualEnv Cached" },
      -- { "<leader>cn", "<cmd>:VenvSelectCurrent<cr>", desc = "Current Select VirtualEnv" },
    },
  },
}

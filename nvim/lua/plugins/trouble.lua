return {
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup()

      vim.keymap.set("n", "<leader>t", function()
        vim.cmd "Trouble diagnostics"
      end)

      vim.keymap.set("n", "[t", function()
        vim.cmd "Trouble diagnostics next"
        vim.cmd "Trouble diagnostics jump"
        vim.defer_fn(function()
          vim.diagnostic.open_float()
        end, 200)
      end)

      vim.keymap.set("n", "]t", function()
        vim.cmd "Trouble diagnostics prev"
        vim.cmd "Trouble diagnostics jump"
        vim.defer_fn(function()
          vim.diagnostic.open_float()
        end, 200)
      end)
    end,
  },
}

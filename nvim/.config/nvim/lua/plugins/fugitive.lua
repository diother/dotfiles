return {
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gs", function()
        vim.cmd.Git()
        vim.cmd "on"
      end)
      vim.keymap.set("n", "<leader>gc", function()
        vim.cmd.Git "commit"
        vim.cmd "on"
      end)
    end,
  },
}

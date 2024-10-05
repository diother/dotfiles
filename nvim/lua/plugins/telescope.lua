return {
  { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable "make" == 1
        end,
      },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      }
      pcall(require("telescope").load_extension, "fzf")
      pcall(require("telescope").load_extension, "ui-select")

      -- See `:help telescope.builtin`
      local builtin = require "telescope.builtin"
      vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git files" })
      vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Grep for word" })
      vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "Find help" })
      -- vim.keymap.set("n", "<leader>pk", builtin.keymaps)
      -- vim.keymap.set("n", "<leader>ps", builtin.builtin)
      vim.keymap.set("n", "<leader>pw", builtin.grep_string)
      -- vim.keymap.set("n", "<leader>pd", builtin.diagnostics)
      -- vim.keymap.set("n", "<leader>pr", builtin.resume)
      -- vim.keymap.set("n", "<leader>p.", builtin.oldfiles)
      -- vim.keymap.set("n", "<leader><leader>", builtin.buffers)
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et

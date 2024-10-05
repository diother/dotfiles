return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("obsidian").setup {
      workspaces = {
        {
          name = "brain",
          path = "~/personal/brain",
        },
      },
      ui = {
        enable = false,
      },
      templates = {
        folder = "templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
      },
      note_id_func = function(title)
        if title == nil then
          for _ = 1, 4 do
            title = title .. string.char(math.random(65, 90))
          end
        end
        return title
      end,
    }

    vim.keymap.set("n", "<leader>ct", function()
      vim.ui.input({ prompt = "Card name: " }, function(input)
        if input then
          vim.cmd("ObsidianNewFromTemplate /cards/" .. input)
        end
      end)
    end)
    vim.keymap.set("n", "<leader>ci", function()
      vim.ui.input({ prompt = "Index name: " }, function(input)
        if input then
          vim.cmd("ObsidianNew /indexes/" .. input)
        end
      end)
    end)
  end,
}

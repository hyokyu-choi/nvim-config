return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    -- "ibhagwan/fzf-lua",              -- optional
    -- "echasnovski/mini.pick",         -- optional
    -- "folke/snacks.nvim",             -- optional
  },
  config = function()
    local neogit = require("neogit")
    local map = vim.keymap.set

    neogit.setup {
      kind = "floating",
    }

    map('n', '<leader>gs', ':Neogit<CR>', { desc = "Neogit status" })
  end,
}

return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    cond = true,
    -- stylua: ignore
    keys = function()
      return {
        { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        { "<leader>S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
        { "<leader>r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
        { "<leader>R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
      }
    end,
    opts = {
      modes = {
        char = {
          jump_labels = true,
        },
      },
    },
  },
}
return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",

    opts = {
      preset = "modern",
      spec = {
        { "<leader>f", group = "file/find" },
        { "<leader>s", group = "search" },
        { "<leader>g", group = "git" },
        { "<leader>u", group = "ui" },
      },
    },

    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps",
      },
    },
  },
}

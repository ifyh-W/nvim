return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
        { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash", nowait = true },
        { "<leader>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter", nowait = true },
    },
}


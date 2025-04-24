return {
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                transparent = true, -- Enable transparency
                theme = "wave", -- Choose Kanagawa theme variant
            })
            vim.cmd("colorscheme kanagawa")
        end,
    },
}
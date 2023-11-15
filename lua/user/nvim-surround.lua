return {
    "kylechui/nvim-surround",
    tag = "v2.1.2", -- Use for stability; omit to use `main` branch for the latest features
    event = "BufEnter",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
}

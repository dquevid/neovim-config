return {
    "echasnovski/mini.move",
    version = false,
    event = "VeryLazy",
    config = function()
        require("mini.move").setup({
            -- Module mappings. Use `''` (empty string) to disable one.
            mappings = {
                -- Move visual selection
                down = "<M-j>",
                up = "<M-k>",
                -- Move current line
                line_down = "<M-j>",
                line_up = "<M-k>",
            },
        })
    end,
}

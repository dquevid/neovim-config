return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    config = function()
        require('neo-tree').setup({
            window = {
                position = 'left',
                width = 30,
            }
        })
        vim.keymap.set('n', '<leader>e', '<CMD>Neotree reveal<CR>', { silent = true, nowait = true })
    end
}

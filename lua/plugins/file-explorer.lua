return {
	{
		'nvim-tree/nvim-tree.lua',
		version = '*',
		lazy = false,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require('nvim-tree').setup({
                view = {
                    width = {
                        min = 30,
                        padding = 4,
                    }
                }
            })
	        vim.keymap.set('n', '<leader>e', '<CMD>NvimTreeToggle<CR>', { silent = true, nowait = true })
		end,
	},
	-- {
	--     'nvim-neo-tree/neo-tree.nvim',
	--     branch = 'v3.x',
	--     tag = '3.26',
	--     dependencies = {
	--         'nvim-lua/plenary.nvim',
	--         'nvim-tree/nvim-web-devicons',
	--         'MunifTanjim/nui.nvim',
	--     },
	--     config = function()
	--         require('neo-tree').setup({
	--             filesystem = {
	--                 filtered_items = {
	--                     visible = true,
	--                 },
	--             },
	--             window = {
	--                 position = 'left',
	--                 width = 30,
	--             }
	--         })
	--         vim.keymap.set('n', '<leader>e', '<CMD>Neotree reveal<CR>', { silent = true, nowait = true })
	--     end
	-- },
}

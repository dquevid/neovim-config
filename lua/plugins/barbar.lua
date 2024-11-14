return {
	'romgrk/barbar.nvim',
	dependencies = {
		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	},
	config = function()
		vim.g.barbar_auto_setup = false

		vim.api.nvim_set_hl(0, 'BufferInactive', { bg = '', fg = '#aaaaaa' })
		vim.api.nvim_set_hl(0, 'BufferInactiveSign', { bg = '', fg = '' })

		require('barbar').setup({
			animation = false,
			auto_hide = 1,

            icons = {
                modified = {
                    button = '',
                },
                separator_at_end = false,
                button = false,
                separator = {
                    left = '|',
                    right = '|',
                },
                inactive = {
                    separator = {
                        left = ' ',
                        right = ' ',
                    },
                },
            },

			sidebar_filetypes = {
				-- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
				NvimTree = true,
				-- Or, specify the text used for the offset:
				undotree = {
					text = 'undotree',
					align = 'center', -- *optionally* specify an alignment (either 'left', 'center', or 'right')
				},
				-- Or, specify the event which the sidebar executes when leaving:
				['neo-tree'] = true,
				-- Or, specify all three
				Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' },
			},
			-- insert_at_start = true,
			-- …etc.
		})

		vim.keymap.set('n', '<leader>bc', '<CMD>BufferClose<CR>', { silent = true, desc = 'Close buffer' })
		vim.keymap.set('n', ']b', '<CMD>BufferNext<CR>', { silent = true, desc = 'Next buffer' })
		vim.keymap.set('n', '[b', '<CMD>BufferPrevious<CR>', { silent = true, desc = 'Previous buffer' })
		return {}
	end,
	opts = {},
	version = '^1.0.0', -- optional: only update when a new 1.x version is released
}

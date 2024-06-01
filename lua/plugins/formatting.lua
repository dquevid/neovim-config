return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local conform = require('conform')

		conform.setup({
			formatters_by_ft = {
				lua = { 'stylua' },
				javascript = { 'prettierd' },
				javascriptreact = { 'prettierd' },
				typescript = { 'prettierd' },
				typescriptreact = { 'prettierd' },
				json = { 'prettierd' },
				markdown = { 'prettierd' },
				css = { 'prettierd' },
				html = { 'prettierd' },
                cs = { 'csharpier' },
			},
		})

		vim.keymap.set({ 'n', 'v' }, '<leader>cf', conform.format, { silent = true, desc = 'Format current file' })
	end,
}

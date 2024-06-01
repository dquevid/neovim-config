return {
	'mfussenegger/nvim-lint',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local lint = require('lint')

		lint.linters.eslint_d.args = {
			'--no-ignore',
			'--stdin',
			'--stdin-filename',
		}

		lint.linters.eslint_d.env = {
			ESLINT_USE_FLAT_CONFIG = 'true',
		}

		lint.linters_by_ft = {
			lua = { 'luacheck' },
			javascript = { 'eslint_d' },
			javascriptreact = { 'eslint_d' },
			typescript = { 'eslint_d' },
			typescriptreact = { 'eslint_d' },
			json = { 'eslint_d' },
			markdown = { 'eslint_d' },
			css = { 'eslint_d' },
			html = { 'eslint_d' },
		}

		local lint_augroup = vim.api.nvim_create_augroup('Lint', { clear = true })

		vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
			group = lint_augroup,
			callback = function()
				require('lint').try_lint()
			end,
		})

		vim.keymap.set('n', '<leader>cl', function()
			require('lint').try_lint()
		end, { silent = true, desc = 'Lint current file' })
	end,
}

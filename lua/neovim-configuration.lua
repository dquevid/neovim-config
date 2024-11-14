-- Line numeration
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Wrapping
vim.opt.wrap = false

-- Safespace
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 24

-- Indenting
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.undofile = true

vim.g.mapleader = " "

-- Mappings
local mappings = {
	n = {
		{ "<leader>q", "<CMD>qa<CR>", { desc = "Quit all" } },
		{ "<leader>w", "<CMD>w<CR>", { desc = "Save" } },
		{ "<leader>bc", "<CMD>q<CR>", { desc = "Close buffer" } },

		{ "<leader>hl", "<CMD>noh<CR>", { desc = "Highlight off" } },

		{ "<C-h>", "<C-w>h", { desc = "Left window" } },
        { "<C-j>", "<C-w>j", { desc = "Down window" } },
        { "<C-k>", "<C-w>k", { desc = "Up window" } },
        { "<C-l>", "<C-w>l", { desc = "Right window" } },

		{ "]b", "gt", { desc = "Next buffer" } },
        { "[b", "gT", { desc = "Previous buffer" } },

		{ "<M-h>", "<C-w><", { desc = "Shrink window" } },
		{ "<M-l>", "<C-w>>", { desc = "Grow window" } },
        { "<M-j>", "<C-w>-", { desc = "Shrink window" } },
        { "<M-k>", "<C-w>+", { desc = "Grow window" } },

		{ "<leader>uw", "<CMD>set wrap!<CR>", { desc = "Toggle wrap" } },
	},
	i = {
		{ "jk", "<ESC>" },
	},
}

-- Set keymaps
for mode, maps in pairs(mappings) do
	for i = 1, #maps do
		vim.keymap.set(mode, maps[i][1], maps[i][2], vim.tbl_deep_extend("force", { silent = true }, maps[i][3] or {}))
	end
end

-- Clipboard default implementation
vim.opt.clipboard = "unnamedplus"

-- Clipboard for WSL
vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
    },
    paste = {
        ['+'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("\r", ""))',
        ['*'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("\r", ""))',
    },
    cache_enabled = 0,
}

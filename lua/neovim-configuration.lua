-- Line numeration
vim.opt.number = true
vim.opt.relativenumber = true

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

-- Nvim keymaps
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>q', '<CMD>qa<CR>', { silent = true })
vim.keymap.set('n', '<leader>w', '<CMD>w<CR>', { silent = true })
vim.keymap.set('n', '<leader>bc', '<CMD>q<CR>', { silent = true })

vim.keymap.set('n', '<leader>hl', '<CMD>noh<CR>', { silent = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

vim.keymap.set('n', ']b', 'gt', { silent = true })
vim.keymap.set('n', '[b', 'gT', { silent = true })

vim.keymap.set('n', '<M-l>', '<C-w>>', { silent = true })
vim.keymap.set('n', '<M-h>', '<C-w><', { silent = true })

vim.keymap.set('n', '<leader>uw', '<CMD>set wrap!<CR>', { silent = true })

vim.keymap.set('n', '<M-j>', '<CMD>m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<M-k>', '<CMD>m .-2<CR>==', { silent = true })

vim.keymap.set('v', '<M-j>', "<CMD>m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<M-k>', "<CMD>m '<-2<CR>gv=gv", { silent = true })

vim.keymap.set('i', 'jk', '<ESC>', { silent = true })

-- Clipboard default implementation
vim.opt.clipboard = 'unnamedplus'

-- WSL2 clipboard implementation
vim.g.clipboard = {
    name = 'win32yank-wsl',
    copy = {
        ['+'] = 'win32yank.exe -i --crlf',
        ['*'] = 'win32yank.exe -i --crlf',
    },
    paste = {
        ['+'] = 'win32yank.exe -o --lf',
        ['*'] = 'win32yank.exe -o --lf',
    },
    cache_enabled = false,
}


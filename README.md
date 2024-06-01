## Features

-   Plugin manager (lazy.nvim)
-   Full LSP support (Mason, nvim-lint, conform.nvim)
-   Snippents (luasnip, friendly-snippets)
-   Fuzzy finding (Telescope)
-   Syntax highlighting (Treesitter)
-   File explorer (Nvim-tree)
-   Status line (Lualine)
-   Color scheme (Catppuccin)

## Installation

### Prerequisites

Make sure to have these installed:

`nvim >= 0.9.5`
`ripgrep`
`yarn`
`git`

Backup your current nvim config and plugins:

```sh
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Install

```sh
git clone https://github.com/dquevid/neovim-config ~/.config/nvim/
nvim
```

## Configuration

    leader = <space>

### Mappings

#### Normal mode

| Action          | Command      |
| --------------- | ------------ |
| Quit all        | `<leader>q`  |
| Save            | `<leader>w`  |
| Close buffer    | `<leader>bc` |
| Highlight off   | `<leader>hl` |
| Left window     | `<C-h>`      |
| Down window     | `<C-j>`      |
| Up window       | `<C-k>`      |
| Right window    | `<C-l>`      |
| Next buffer     | `]b`         |
| Previous buffer | `[b`         |
| Shrink window   | `<M-h>`      |
| Grow window     | `<M-l>`      |
| Shrink window   | `<M-j>`      |
| Grow window     | `<M-k>`      |
| Toggle wrap     | `<leader>uw` |
| Move line down  | `<M-j>`      |
| Move line up    | `<M-k>`      |

#### Insert Mode

| Action | Command |
| ------ | ------- |
| Escape | `jk`    |

#### Visual Mode

| Action              | Command |
| ------------------- | ------- |
| Move selection down | `<M-j>` |
| Move selection up   | `<M-k>` |

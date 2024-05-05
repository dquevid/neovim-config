### Features

- Plugin manager (lazy.nvim)
- LSP (Mason, none-ls)
- Snippents (luasnip, friendly-snippets)
- Fuzzy finding (Telescope)
- Syntax highlighting (Treesitter)

### Configuration

    leader = <space>    

### Mappings

#### Normal mode

|Action                 |Command
|-                      |-
|Quit all               |`<leader>q`
|Save                   |`<leader>w`
|Close buffer           |`<leader>bc`
|Highlight off          |`<leader>hl`
|Switch window left     |`<C-h>`
|Switch window down     |`<C-j>`
|Switch window up       |`<C-k>`
|Switch window right    |`<C-l>`
|Next tab               |`]b`
|Previous tab           |`[b`
|Increase window size   |`<M-l>`
|Decrease window size   |`<M-h>`
|Toggle wrap            |`<leader>uw`
|Move line down         |`<M-j>`
|Move line up           |`<M-k>`

#### Insert Mode

|Action                 |Command
|-                      |-
|Escape                 |`jk`

### Installation

#### Prerequisites

Make sure to have these installed:

- `nvim >= 0.9.5`
- `git`

Backup your current nvim config and plugins:

    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    mv ~/.cache/nvim ~/.cache/nvim.bak

#### Install

    git clone https://github.com/dquevid/neovim-config ~/.config/nvim/
    nvim
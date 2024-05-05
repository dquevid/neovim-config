local servers = {
    lua_ls = function(client)
        local path = client.workspace_folders[1].name
        if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
            return
        end
        client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
            runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = "LuaJIT",
            },
            -- Make the server aware of Neovim runtime files
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                    -- Depending on the usage, you might want to add additional paths here.
                    -- "${3rd}/luv/library"
                    -- "${3rd}/busted/library",
                },
                -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                -- library = vim.api.nvim_get_runtime_file("", true)
            },
        })
    end,
    ["tsserver"] = function() end,
    ["emmet_language_server"] = function() end,
    ["pyright"] = function() end,
    ["gopls"] = function() end,
}

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
            vim.keymap.set("n", "<leader>pm", "<CMD>Mason<CR>", { silent = true })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = servers,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        version = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            for key, value in pairs(servers) do
                lspconfig[key].setup({
                    on_init = value,
                    capabilities = capabilities,
                })
            end

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { silent = true })
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { silent = true })
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { silent = true })
            vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, { silent = true })
        end,
    },
}

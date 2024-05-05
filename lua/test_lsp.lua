local client = vim.lsp.start_client({
    name = "test-lsp",
    cmd = { "/home/dqvid/code/test-lsp/main" },
    on_attach = function(client)
    end
})

if not client then
    vim.notify("Could not start test-lsp")
    return
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.lsp.buf_attach_client(0, client)
    end,
})

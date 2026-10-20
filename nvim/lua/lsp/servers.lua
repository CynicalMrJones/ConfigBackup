-- lua/lsp/servers.lua
--
--
vim.lsp.config["jdtls"] = {
    capabilities = {
        offsetEncoding = { "utf-8", "utf-16" },
        textDocument = {
            completion = {
                editsNearCursor = true
            }
        }
    },
    filetype = { "java" },
}

vim.lsp.enable("pyright")
vim.lsp.enable("rust-analyzer")
vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("jdtls")
vim.lsp.enable("html")

-- vim.lsp.inline_completion.enable()

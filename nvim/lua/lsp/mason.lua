-- lua/lsp/mason.lua
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",        -- Lua
        "ts_ls",         -- TypeScript/JavaScript (tsserver successor)
        "pyright",       -- Python
        "rust_analyzer", -- Rust
        "clangd",        -- c, c++
        "gopls",         -- Go
        "jdtls",         -- Java
    },
})

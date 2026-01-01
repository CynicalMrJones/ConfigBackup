
require("config.lazy")

--Keybinds
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.smartindent = true

vim.opt.termguicolors = true

vim.opt.colorcolumn = "90"
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = 'yes'

vim.cmd('colorscheme retrobox')

vim.lsp.config['clangd'] = {
    -- Command and arguments to start the server.
    cmd = { 'clangd' },
    -- Filetypes to automatically attach to.
    -- root_markers = { {'.clangd', '.clang-tidy', '.clang-format', 'compile_commands.json', 'compile_flags.txt', 'configure.ac', '.git'} }
    filetypes = { 'c', 'cpp' },
}


vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')

--LSP stuff
local cmp = require('cmp')
cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
    },
    snippet = {
        expand = function(args)
            -- You need Neovim v0.10 to use vim.snippet
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({}),
})

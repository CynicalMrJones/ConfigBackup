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
vim.opt.scrolloff = 8


vim.cmd('colorscheme habamax')


-- init.lua (minimal glue)
require("harpoon.harpoon")
require("lsp.mason")
require("lsp.diagnostics")
require("lsp.servers")
require('cmp').setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}
-- optional: require("lsp.none-ls")

-- Make keymaps buffer-local only when LSP attaches
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local bufnr = args.buf
        if client and bufnr then
            require("lsp.common").on_attach(client, bufnr)
        end
    end,
})

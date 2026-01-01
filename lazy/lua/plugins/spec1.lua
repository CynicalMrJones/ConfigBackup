return {
    {'neovim/nvim-lspconfig'},
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
}

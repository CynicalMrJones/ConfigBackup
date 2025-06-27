return{
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
}

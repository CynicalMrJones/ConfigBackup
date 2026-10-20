-- lua/plugins.lua (or your lazy.nvim spec)
return {
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp",
        event = { "InsertEnter", "CmdlineEnter" },
  },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  -- Optional: visuals & UI
  { "folke/trouble.nvim", opts = {} },
    {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "rose-pine/neovim", name = "rose-pine" },
}

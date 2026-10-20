-- lua/cmp.lua
local cmp = require("cmp")
local luasnip = require("luasnip")
-- cmp.setup({
--     snippet = {
--         expand = function(args) luasnip.lsp_expand(args.body) end,
--     },
--     mapping = cmp.mapping.preset.insert({
--         ["<C-Space>"] = cmp.mapping.complete(),
--         ["<CR>"] = cmp.mapping.confirm({ select = true }),
--         ["<Tab>"] = cmp.mapping(function(fallback)
--             if cmp.visible() then cmp.select_next_item()
--             elseif luasnip.expand_or_jumpable() then luasnip.expand_or_jump()
--             else fallback() end
--         end, { "i", "s" }),
--         ["<S-Tab>"] = cmp.mapping(function(fallback)
--             if cmp.visible() then cmp.select_prev_item()
--             elseif luasnip.jumpable(-1) then luasnip.jump(-1)
--             else fallback() end
--         end, { "i", "s" }),
--     }),
--     sources = cmp.config.sources({
--         { name = "nvim_lsp" },
--         { name = "luasnip" },
--     }),
-- })
 cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    -- mapping = {
    --     ["<Space>"] = cmp.mapping.select_next_item(),
    -- },
    mapping = cmp.mapping.preset.insert({
      ['<Down>'] = cmp.mapping.select_next_item(),
      ['<Up>'] = cmp.mapping.select_prev_item(),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      -- { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
      { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

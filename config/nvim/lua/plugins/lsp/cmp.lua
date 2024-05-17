local cmp = require('cmp')
local lspkind = require('lspkind')

vim.cmd('highlight link CmpItemAbbrMatch PmenuExtraSel')
cmp.setup({
  auto_select = true,
  sources = {
    {name = 'nvim_lsp'},
    {name = "luasnip"},
    {name = 'buffer'}
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<Tab>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[Latex]",
      })
    }),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "NormalFloat:NormalFloat,FloatBorder:NormalFloat",
    }),
  },
})

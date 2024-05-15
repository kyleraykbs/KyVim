require('lsp-zero')
local lspconfig = require('lspconfig')
lspconfig.intelephense.setup({})
lspconfig.nixd.setup({})
lspconfig.pyright.setup({})
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"},
        disable = {"undefined-global"}
      }
    }
  }
})

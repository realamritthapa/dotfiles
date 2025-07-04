return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require ("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "ts_ls", "html", "cssls", "tailwindcss"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({})
    lspconfig.ts_ls.setup({})
    lspconfig.html.setup({})
    lspconfig.cssls.setup({})
    lspconfig.tailwindcss.setup({})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    end
  }
}

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
        ensure_installed = {"lua_ls", "ts_ls", "html", "cssls", "tailwindcss", "gopls", "terraformls"},
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
    local lspconfig = require("lspconfig")
    --lspconfig.lua_ls.setup({})
    --lspconfig.ts_ls.setup({})
    --lspconfig.html.setup({})
    --lspconfig.cssls.setup({})
    --lspconfig.tailwindcss.setup({})
      require("lspconfig").terraformls.setup({
  root_dir = require("lspconfig.util").root_pattern(".terraform", ".git", "*.tf"),
})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
--vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, {})
      vim.keymap.set("n", "<leader>e", function()
        vim.diagnostic.open_float(nil, { focus = false })
      end, opts)

      -- Diagnostics config
      vim.diagnostic.config({
        virtual_text = false,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      -- Show diagnostics on hover (like VSCode)
      vim.o.updatetime = 300
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.diagnostic.open_float(nil, { focus = false })
        end
      })
    end
  }
}

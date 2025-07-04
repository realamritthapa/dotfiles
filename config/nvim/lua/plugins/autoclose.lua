return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter", -- Only load when entering insert mode
    -- Other options for nvim-autopairs
    config = function()
      require('nvim-autopairs').setup({
        -- You can add specific configurations here.
        -- For HTML, it generally works out of the box.
        -- Example: disable for certain filetypes
        -- disable_filetype = { "TelescopePrompt", "vim" },
        check_ts = true, -- Enable Treesitter checks for more intelligent pairing
        ts_config = {
          lua = {'string'}, -- Don't add pairs inside lua strings
          javascript = {'template_string'}, -- Don't add pairs inside JS template strings
          html = true, -- Make sure HTML is enabled (default is usually true)
          -- etc.
        },
      })

      -- If you are using nvim-cmp for completion, you might want this integration
      -- This ensures that nvim-autopairs plays nicely with completion
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp_status_ok, cmp = pcall(require, 'cmp')
      if cmp_status_ok then
        cmp.event:on(
          'confirm_done',
          cmp_autopairs.on_confirm_done()
        )
      end
    end,
  },
  -- You might also want nvim-ts-autotag for *full* HTML tag auto-closing and renaming
  {
    'windwp/nvim-ts-autotag',
    ft = { 'html', 'javascriptreact', 'typescriptreact', 'vue', 'svelte', 'jsx', 'tsx' }, -- Only load for these filetypes
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- Requires nvim-treesitter
    config = function()
      require('nvim-ts-autotag').setup({
        opts = {
            enable_close = true, -- Auto close tags
            enable_rename = true, -- Auto rename pairs of tags (e.g., change <div> to <p> and it changes </div> to </p>)
            enable_close_on_slash = false, -- Auto close on trailing </
        }
      })
    end,
  }
}
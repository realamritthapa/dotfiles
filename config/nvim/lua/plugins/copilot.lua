return{
  "github/copilot.vim",
  config = function ()
    vim.g.copilot_no_tab_map = true
    vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPost", "BufNewFile" }, {
      callback = function()
        local path = vim.api.nvim_buf_get_name(0)  -- full file path
        if path:find("^/Users/amrit/neetcode") then
          vim.b.copilot_enabled = false
          vim.cmd("Copilot disable")
        else
          vim.b.copilot_enabled = true
          vim.cmd("Copilot enable")
        end
      end,
    })
  end,
}

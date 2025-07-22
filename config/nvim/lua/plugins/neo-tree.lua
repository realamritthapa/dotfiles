return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false, -- Show dotfiles 
        hide_gitignored = false, -- Show gitignored files
      }
    }
  },
	config = function()
		require("neo-tree").setup({
			window = {
				position = "right",
			},
		})
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal<CR>", {})
		vim.keymap.set("n", "<leader>N", ":Neotree close<CR>", {})
	end,
}

return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		lazy = true,
		cmd = "NvimTreeToggle",
		keys = {
			{ "\\", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
		},
		opts = {},
	},
}

return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"catppuccin/nvim",
		},
		config = function()
			require("bufferline").setup({
				options = {
					-- close_command = "Bdelete! %d", -- can be a string | function, | false see "Mouse actions"
					-- right_mouse_command = "Bdelete! %d", -- can be a string | function | false, see "Mouse actions"
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "Directory",
							text_align = "left",
							separator = true,
						},
					},
				},
				highlights = require("catppuccin.groups.integrations.bufferline").get(),
			})
		end,
	},
}

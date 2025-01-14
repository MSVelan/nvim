return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		lazy = true,
		cmd = "ToggleTerm",
		keys = {
			{ "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
		},
	},
}

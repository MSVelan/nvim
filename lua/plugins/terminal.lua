return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		lazy = true,
		cmd = "ToggleTerm",
		keys = {
			{ "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
			{
				"<leader>tg",
				function()
					lazygit:toggle()
				end,
				desc = "[T]oggle [G]it",
			}, -- Ensure keybinding is recognized
		},
		dependencies = {
			"jesseduffield/lazygit",
		},
		config = function()
			require("toggleterm").setup() -- Correct setup function

			local Terminal = require("toggleterm.terminal").Terminal
			lazygit = Terminal:new({ -- Define `lazygit` globally within the scope
				cmd = "lazygit",
				direction = "float",
				float_opts = {
					border = "double",
				},
				hidden = true,
			})
		end,
	},
}

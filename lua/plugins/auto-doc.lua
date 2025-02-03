return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		require("neogen").setup({
			enabled = true,
			languages = {
				python = {
					template = {
						annotation_convention = "google", -- Use Google-style docstrings
					},
				},
			},
		})
		vim.keymap.set("n", "<leader>nd", ":Neogen<CR>", { noremap = true, silent = true })
	end,
}

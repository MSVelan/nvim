return {
	-- install without yarn or npm
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		config = function()
			vim.keymap.set(
				"n",
				"<leader>mt",
				":MarkdownPreviewToggle<CR>",
				{ desc = "Markdown Toggle", noremap = true, silent = true }
			)
		end,
	},
}

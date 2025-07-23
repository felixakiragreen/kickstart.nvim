-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	'nvim-neo-tree/neo-tree.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
		'MunifTanjim/nui.nvim',
	},
	lazy = false,
	keys = {
		{ '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
		{ 'h', 'i', noremap = true },
		{ 'i', 'k', noremap = true },
		{ 'j', 'h', noremap = true },
		{ 'k', 'j', noremap = true },
		{ 'l', 'l', noremap = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					['\\'] = 'close_window',
					['h'] = 'show_file_details',
					['i'] = 'noop',
				},
			},
		},
	},
}

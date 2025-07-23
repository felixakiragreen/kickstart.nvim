return {
	{
		'tenxsoydev/tabs-vs-spaces.nvim',
		opts = {
			indentation = 'tabs',
			standartize_on_save = false,
		},
	},
	{
		'HiPhish/rainbow-delimiters.nvim',
		-- strategy = {},
		-- query = {},
		-- priority = 1000,
		-- highlight = {
		-- 	'RainbowRed',
		-- 	'RainbowOrange',
		-- 	'RainbowYellow',
		-- 	'RainbowGreen',
		-- 	'RainbowBlue',
		-- 	'RainbowPurple',
		-- }
	},
	{ -- Add indentation guides even on blank lines
		'lukas-reineke/indent-blankline.nvim',
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = 'ibl',
		opts = {},
		config = function()
			local highlightLines = {
				'RainbowRed',
				'RainbowOrange',
				'RainbowYellow',
				'RainbowGreen',
				'RainbowBlue',
				'RainbowPurple',
			}
			local highlightDimLines = {
				'RainbowDimRed',
				'RainbowDimOrange',
				'RainbowDimYellow',
				'RainbowDimGreen',
				'RainbowDimBlue',
				'RainbowDimPurple',
			}
			local highlightBackground = {
				'RainbowBackgroundRed',
				'RainbowBackgroundOrange',
				'RainbowBackgroundYellow',
				'RainbowBackgroundGreen',
				'RainbowBackgroundBlue',
				'RainbowBackgroundPurple',
			}
			local hooks = require 'ibl.hooks'
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, 'RainbowRed', { fg = felixai.red400 })
				vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = felixai.orange400 })
				vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = felixai.yellow400 })
				vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = felixai.green400 })
				vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = felixai.blue400 })
				vim.api.nvim_set_hl(0, 'RainbowPurple', { fg = felixai.purple400 })
				vim.api.nvim_set_hl(0, 'RainbowDimRed', { fg = felixai.red600 })
				vim.api.nvim_set_hl(0, 'RainbowDimOrange', { fg = felixai.orange600 })
				vim.api.nvim_set_hl(0, 'RainbowDimYellow', { fg = felixai.yellow600 })
				vim.api.nvim_set_hl(0, 'RainbowDimGreen', { fg = felixai.green600 })
				vim.api.nvim_set_hl(0, 'RainbowDimBlue', { fg = felixai.blue600 })
				vim.api.nvim_set_hl(0, 'RainbowDimPurple', { fg = felixai.purple600 })
				vim.api.nvim_set_hl(0, 'RainbowBackgroundRed', { fg = felixai.red700 })
				vim.api.nvim_set_hl(0, 'RainbowBackgroundOrange', { fg = felixai.orange700 })
				vim.api.nvim_set_hl(0, 'RainbowBackgroundYellow', { fg = felixai.yellow700 })
				vim.api.nvim_set_hl(0, 'RainbowBackgroundGreen', { fg = felixai.green700 })
				vim.api.nvim_set_hl(0, 'RainbowBackgroundBlue', { fg = felixai.blue700 })
				vim.api.nvim_set_hl(0, 'RainbowBackgroundPurple', { fg = felixai.purple700 })
			end)

			vim.g.rainbow_delimiters = { highlight = highlightLines }

			require('ibl').setup {

				indent = {
					highlight = highlightDimLines,
					char = '┆',
					-- char = '│', -- use this if you want a single line
					tab_char = '┆', -- use this if you want a single line
					-- show_trailing_blankline_indent = false,
					-- show_first_indent_level = false,
				},
				whitespace = {
					-- highlight = highlightBackground,
					-- char = '┊',
					highlight = { 'CursorColumn', 'Whitespace' },
					-- highlight = { 'CursorColumn', 'Whitespace' },
				},
				scope = {
					-- enabled = false,
					highlight = highlightLines,
					char = '┃',
				},
			}

			-- hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		end,
	},
}

--[[

Alternatives: 
• left aligned solid 
	▏▎(default)▍▌▋▊▉█
• center aligned solid 
	│┃
• right aligned solid
	▕▐
• center aligned dashed
	╎╏┆┇┊┋
	⁞⋮
• center aligned double
	║

--]]

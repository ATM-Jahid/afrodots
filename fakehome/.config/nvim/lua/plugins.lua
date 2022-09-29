-- Plugins for a better workflow

-- bootstrap packer.nvim
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1',
	'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'lewis6991/impatient.nvim'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('nvim-treesitter.configs').setup {
				ensure_installed = {"cpp", "python", "latex"},
				highlight = {enable = true}
			}
		end,
	}
	use {
		'nvim-treesitter/playground',
		cmd = 'TSPlaygroundToggle',
	}

	use {
		'nvim-telescope/telescope.nvim',
		cmd = 'Telescope',
		requires = {{'nvim-lua/plenary.nvim', opt = true}},
		wants = {'plenary.nvim'},
	}

	use {
		'lervag/vimtex',
		ft = 'tex',
		config = function()
			vim.g.vimtex_view_method = 'zathura'
		end,
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)

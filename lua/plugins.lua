local packer = require("packer")
function setup_plugins()
	packer.startup(function(use)
		use { "wbthomason/packer.nvim" }
		use { "ellisonleao/gruvbox.nvim" }
		use {"ur4ltz/surround.nvim"}
		use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.5',
			 requires = { {'nvim-lua/plenary.nvim'} }
		}
		use {
		  'nvim-lualine/lualine.nvim',
		   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}
		use { "fatih/vim-go" }
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v3.x',
			requires = {
				{'neovim/nvim-lspconfig', commit = '5e54173da4e0ffd8e9559c0a1fddfb3b7df97bec'},             -- Required
				{'nvim-lua/completion-nvim'},
			--	{'mrcjkb/rustaceanvim'},
				{'simrat39/rust-tools.nvim'},
				{'williamboman/mason.nvim'},           -- Optional
				{'williamboman/mason-lspconfig.nvim'}, -- Optional
				{'hrsh7th/nvim-cmp'},         -- Required
				{'hrsh7th/cmp-nvim-lsp'},     -- Required
				{'hrsh7th/cmp-buffer'},       -- Optional
				{'hrsh7th/vim-vsnip'},
				{'hrsh7th/cmp-vsnip'},
				{'hrsh7th/cmp-path'},         -- Optional
				{'saadparwaiz1/cmp_luasnip'}, -- Optional
				{'hrsh7th/cmp-nvim-lua'},     -- Optional
				{'L3MON4D3/LuaSnip'},             -- Required
				{'rafamadriz/friendly-snippets'}, -- Optional
			}
		}
		use {"akinsho/toggleterm.nvim", tag = '*' }
		use "terrortylor/nvim-comment"
		use "CreaturePhil/vim-handmade-hero"
		use({
		  "hrsh7th/nvim-cmp",
		  requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "hrsh7th/vim-vsnip" },
			{ "hrsh7th/cmp-vsnip" },
			{'Thomashighbaugh/nvim-forge'},
			{ "hrsh7th/vim-vsnip-integ" },
			{ "f3fora/cmp-spell", { "hrsh7th/cmp-calc" }, { "hrsh7th/cmp-emoji" } },
		  },
		})
		use {
			'akinsho/git-conflict.nvim',
			tag = "*",
			config = function()
				require('git-conflict').setup {
					default_mappings = true,
					default_commands = true,
					disable_diagnostics = false,
					list_opener = 'copen',
					highlights = {
						incoming = 'DiffAdd',
						current = 'DiffText',
					}
				}
			end
		}
		use "lervag/vimtex"
		use "mattn/emmet-vim"
	-- install without yarn or npm
		use({
			"iamcco/markdown-preview.nvim",
			run = function() vim.fn["mkdp#util#install"]() end,
		})

		use  
	  {
		  "zbirenbaum/copilot-cmp",
		  config = function()
			  require("copilot_cmp").setup()
		  end,
	  }

		use {
		  'nvim-tree/nvim-tree.lua',
		  requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		  },
		}

		use {'christoomey/vim-tmux-navigator', lazy = false,}
		use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
		use {'ray-x/go.nvim', commit = '591a0b837420f27c734600fa5c6de87f18352e50', 
			requires = {
				'ray-x/guihua.lua' -- recommended if need floating window support
		}}
		-- use {
		--   "olexsmir/gopher.nvim",
		--   requires = { -- dependencies
		-- 	"nvim-lua/plenary.nvim",
		-- 	"nvim-treesitter/nvim-treesitter",
		--   },
		-- }

	end)
end

return {
	setup_plugins = setup_plugins
}

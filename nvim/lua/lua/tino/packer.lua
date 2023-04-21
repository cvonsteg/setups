-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	-- lsp setup
	use("neovim/nvim-lspconfig")
	-- Visualize lsp progress
	use({
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup()
		end
	})

	-- Autocompletion framework
	use("hrsh7th/nvim-cmp")
	use({
		-- cmp LSP completion
		"hrsh7th/cmp-nvim-lsp",
		-- cmp Snippet completion
		"hrsh7th/cmp-vsnip",
		-- cmp Path completion
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		after = { "hrsh7th/nvim-cmp" },
		requires = { "hrsh7th/nvim-cmp" },
	})
	-- See hrsh7th other plugins for more great completion sources!
	-- Snippet engine
	use('hrsh7th/vim-vsnip')
	-- Adds extra functionality over rust analyzer
	use("simrat39/rust-tools.nvim")
	use("lunarvim/Onedarker.nvim")
	-- use('scrooloose/nerdtree')
	use('jiangmiao/auto-pairs')
	use('machakann/vim-highlightedyank')
	-- A cool status bar
	use('vim-airline/vim-airline')
	-- Airline themes
	use('vim-airline/vim-airline-themes')
    -- lualine
    -- use {
    --     'nvim-lualine/lualine.nvim',
    --     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    -- }
	use({
		"klen/nvim-test",
		config = function()
			require('nvim-test').setup()
		end
	})
    -- using packer.nvim
    use({
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons',
        config = function() 
            require("bufferline").setup()
        end
    })
    -- hop for quick-find
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use('matbme/JABS.nvim')
    use("williamboman/mason.nvim") -- simple to use language server installer
    use("williamboman/mason-lspconfig.nvim") -- simple to use language server installer

    -- use ({
    --     'yorickpeterse/happy_hacking.vim',
    --     config = function()
    --         vim.cmd('colorscheme happy_hacking')
    --     end
    -- })

end)


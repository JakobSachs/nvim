vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer line required
    use 'wbthomason/packer.nvim'


    --
    -- Custom Plugins
    --

    -- tmux integration
    use { 'christoomey/vim-tmux-navigator' }

    -- Telescope for Fuzzyfinding etc.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Treesitter for syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        commit = 'f197a15',
    }

    -- LSP
    use { 'williamboman/mason.nvim',
    }
    use { 'williamboman/mason-lspconfig.nvim' }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use "hrsh7th/cmp-path"

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- wakatime
    use 'wakatime/vim-wakatime'

    --  colorschemes
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'nyngwang/nvimgelion' })
    use { "ellisonleao/gruvbox.nvim" }
    use { 'aktersnurra/no-clown-fiesta.nvim' }
    use { 'orfosys/nvim-nyctophilia' }

    -- dimn inactive windows via tint
    use 'levouh/tint.nvim'

    use {
        'folke/trouble.nvim',
        requires = { "nvim-tree/nvim-web-devicons" },
    }

    use 'nvim-treesitter/nvim-treesitter-context'

    use {
        'theHamsta/nvim-treesitter-pairs',
        requires = { 'nvim-treesitter/nvim-treesitter' },
    }

    use { 'kaarmu/typst.vim', ft = { 'typst' } }

    use { 'dstein64/vim-startuptime' }

    use 'mfussenegger/nvim-jdtls'

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { "nvim-lua/plenary.nvim" }
    }

    use {
        'm4xshen/hardtime.nvim',
        requires = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require('hardtime').setup()
        end
    }
end)

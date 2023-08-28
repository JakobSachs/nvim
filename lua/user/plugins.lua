vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer line required
    use 'wbthomason/packer.nvim'

    --
    -- Custom Plugins
    --

    -- Telescope for Fuzzyfinding etc.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Treesitter for syntax
    use(
        'nvim-treesitter/nvim-treesitter',
        { run = ":TSUpdate" }

    )

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- lsp inlay hints
    use('simrat39/inlay-hints.nvim')


    -- Copilot
    use {
        "zbirenbaum/copilot.lua",
    }

    -- autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- wakatime
    use 'wakatime/vim-wakatime'

    -- For nice responsive colors
    use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

    -- Alternative theme
    use 'crispybaccoon/aurora'

    -- Startuptime benchmarking
    use 'dstein64/vim-startuptime'

    -- dimn inactive windows via tint
    use 'levouh/tint.nvim'
end)

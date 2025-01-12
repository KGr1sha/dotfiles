-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ("rebelot/kanagawa.nvim")

    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        "zenbones-theme/zenbones.nvim",
        requires = {{"rktjmp/lush.nvim"}}
    }

    use {"rose-pine/neovim", as = "rose-pine"}

    use ("widatama/vim-phoenix")

    use ("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

    use ("ThePrimeagen/harpoon")

    use ("mbbill/undotree")

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }

    use ("tpope/vim-fugitive")

    use {'neovim/nvim-lspconfig'}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use ("habamax/vim-godot")

    --C# & Unity
    use ("OmniSharp/omnisharp-vim")
    use ("tpope/vim-dispatch")
    use ("Shougo/vimproc.vim")
    use ("dense-analysis/ale")

end)

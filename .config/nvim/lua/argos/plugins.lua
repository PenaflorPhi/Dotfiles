require("lazy").setup({
    -- Colorscheme
    { "folke/tokyonight.nvim", lazy = false, priority = 1000 },

    -- Linters and Formatters
    { "stevearc/conform.nvim" },
    { "mfussenegger/nvim-lint" },

    -- Completions
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-nvim-lsp-signature-help" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    { "saadparwaiz1/cmp_luasnip" },
    { "onsails/lspkind.nvim" },

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- LSP
    { "neovim/nvim-lspconfig" },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require("lsp_signature").setup(opts) end,
    },
    { "folke/neodev.nvim", opts = {} },

    -- Markdown & LaTeX
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- Comment
    { "numToStr/Comment.nvim", opts = {}, lazy = false },

    -- Testing
    { "nvim-tree/nvim-web-devicons" },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { "smoka7/hop.nvim", version = "*", opts = {} },
    { "akinsho/bufferline.nvim", version = "*" },
    { "nvim-lualine/lualine.nvim" },
    { "nvim-tree/nvim-tree.lua" },
    { "NvChad/nvim-colorizer.lua" },
    { "nvim-lua/plenary.nvim" },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local options = {
    -- ===============================
    -- General Options              --
    -- ===============================
    title = true,

    modifiable = true,
    hlsearch = true,
    ignorecase = true,
    linebreak = true,
    wrap = true,
    smartcase = true,
    smartindent = true,

    number = true,
    relativenumber = true,
    numberwidth = 1,
    signcolumn = "yes",

    scrolloff = 8,
    sidescroll = 8,

    cmdheight = 1,
    laststatus = 2,
    pumheight = 10,
    showcmd = true,
    showmode = true,
    showtabline = 2,

    background = "dark",
    termguicolors = true,
    colorcolumn = "88",
    cursorcolumn = true,
    cursorline = true,

    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,

    fileencoding = "utf-8",
    spell = true,
    spelllang = "en,es",
    spellsuggest = "10",

    timeoutlen = 150,
    updatetime = 50,

    -- ============================
    -- Sane defaults
    -- ============================
    backup = false,
    swapfile = false,
    undofile = true,
    clipboard = "unnamedplus",

    -- ===========================================
    -- This is related to completions... I think.
    -- ===========================================
    completeopt = "menu,preview,noselect",
}

for i, j in pairs(options) do
    vim.opt[i] = j
end

-- =============================
-- vim cmds
-- =============================
vim.cmd("syntax enable")
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")
vim.cmd([[
command! -nargs=0 -bar WQ :wq
command! -nargs=0 -bar Wq :wq
command! -nargs=0 -bar Q :q
]])

vim.cmd([[retab]])

vim.diagnostic.config({
    underline = true,
    signs = true,
    virtual_text = false,
    float = {
        show_header = true,
        source = "always",
        border = "rounded",
        focusable = false,
    },
    update_in_insert = false, -- default to false
    severity_sort = true, -- default to false
})

-- =============================
-- Keymaps
-- =============================
require("keymaps")

-- =============================
-- Plugins
-- =============================
require("argos.lazy")
require("argos.plugins")
require("colorizer").setup({})
require("argos.conform")
require("argos.nvim-lint")
require("argos.cmp")
require("argos.lspkind")
require("argos.treesitter")
require("argos.lspconfig")
require("argos.comment")
require("argos.indent-blankline")
require("argos.hop")
require("bufferline").setup({})
require("argos.lualine")
require("argos.nvim-tree")
require("lsp_signature").setup({})

vim.cmd([[colorscheme tokyonight-night]])

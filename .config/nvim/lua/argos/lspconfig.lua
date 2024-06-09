-- Setup language servers.
local lspconfig = require("lspconfig")

local lsp_signature_setup = {
    on_attach = function(client, bufnr)
        require("lsp_signature").on_attach(signature_setup, bufnr)
    end,
}

lspconfig.lua_ls.setup(lsp_signature_setup)
lspconfig.clangd.setup(lsp_signature_setup)
lspconfig.ruff_lsp.setup(lsp_signature_setup)
lspconfig.bashls.setup(lsp_signature_setup)
lspconfig.asm_lsp.setup(lsp_signature_setup)

-- lspconfig.lua_ls.setup(lsp_signature_setup)
-- lspconfig.clangd.setup(lsp_signature_setup)
-- lspconfig.ruff_lsp.setup(lsp_signature_setup)
-- lspconfig.bashls.setup(lsp_signature_setup)
-- lspconfig.asm_lsp.setup(lsp_signature_setup)

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>d", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>N", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        -- vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set(
            "n",
            "<space>wl",
            function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
            opts
        )
        vim.keymap.set("n", "<space>g", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<space>r", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    end,
})

vim.keymap.set(
    { "n" },
    "<C-k>",
    function() require("lsp_signature").toggle_float_win() end,
    { silent = true, noremap = true, desc = "toggle signature" }
)

vim.keymap.set(
    { "n" },
    "<Leader>k",
    function() vim.lsp.buf.signature_help() end,
    { silent = true, noremap = true, desc = "toggle signature" }
)

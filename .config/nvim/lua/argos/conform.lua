require("conform").setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
    format_after_save = {
        lsp_fallback = true,
    },
    formatters_by_ft = {
        asm = { "asmfmt" },
        lua = { "stylua" },
        c = { "clang_format" },
        -- cpp = { "clang_format" },
        -- latex = { "latexindent", "prettier" },
        python = { "ruff_fix", "ruff_format", "isort", "black" },
        sh = { "shellcheck", "shfmt" },
        sql = { "sqlfluff" },
        markdown = { "prettier" },
        ["*"] = { "trim_whitespace" },
    },
})

vim.api.nvim_create_user_command("Format", function(args)
    local range = nil
    if args.count ~= -1 then
        local end_line =
            vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
        range = {
            start = { args.line1, 0 },
            ["end"] = { args.line2, end_line:len() },
        }
    end
    require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })

require("conform").formatters.shfmt = {
    prepend_args = { "-i", "4" },
}

vim.cmd("au BufEnter * lua require('lint').try_lint()")
vim.cmd("au BufWritePost * lua require('lint').try_lint()")
vim.cmd("au InsertLeave * lua require('lint').try_lint()")

local cppcheck = require("lint").linters.cppcheck
cppcheck.args = {
    "--enable=all",
    "--suppress=missingIncludeSystem",
}

require("lint").linters_by_ft = {
    c = { "clangtidy" },
    tex = { "chktex" },
    lua = { "luacheck" },
    python = { "ruff", "pylint" },
    python = { "ruff" },
    sql = { "sqlfluff" },
    shell = { "shellcheck" },
    vim = { "vint" },
}

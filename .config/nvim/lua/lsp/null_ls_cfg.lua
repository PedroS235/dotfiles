--     _   __      ____      __
--    / | / /_  __/ / /     / /____
--   /  |/ / / / / / /_____/ / ___/
--  / /|  / /_/ / / /_____/ (__  )
-- /_/ |_/\__,_/_/_/     /_/____/

local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    debug = false,
    sources = {
        formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
        formatting.black.with({ extra_args = { "--line-length", "--fast", "--skip-string-normalization" } }),
        formatting.stylua,
        diagnostics.flake8.with({ extra_args = { "--max-line-length=90", "--multiline-quotes" } }),
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})

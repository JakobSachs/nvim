local lsp = require('lsp-zero')


lsp.preset('recommended')


-- remap default vim movements to fallback to lsp
lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = true })
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    vim.diagnostic.config({
        virtual_text = false,
    })

    lsp.buffer_autoformat()
end)



lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

lsp.setup()

-- Lua language server
require('lspconfig').lua_ls.setup {
    lsp.nvim_lua_ls()
}


require 'lspconfig'.typst_lsp.setup {
    settings = {
        exportPdf = "onType" -- Choose onType, onSave or never.
        -- serverPath = "" -- Normally, there is no need to uncomment it.
    }
}

require('lspconfig').jdtls.setup({})

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local _ = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),
    },
    sources = {
        {
            name = 'path'
        },
        {
            name = 'buffer'
        },
        {
            name = 'nvim_lsp'
        },
    }
})

-- tressitter context
require('treesitter-context').setup {
    line_numbers = false,
    separator = '=',
}

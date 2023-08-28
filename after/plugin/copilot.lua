-- Old copilot.lua setup
-- require("copilot").setup({
--     suggestion = { enabled = false },
--     panel = { enabled = false },
-- })
-- require('copilot_cmp').setup()
--
-- local cmp = require('cmp')
--
-- cmp.setup({
--     sources = {
--         { name = 'copilot' },
--         { name = 'nvim_lsp' },
--     },
--     mapping = {
--         ['<CR>'] = cmp.mapping.confirm({
--             -- documentation says this is important.
--             -- I don't know why.
--             behavior = cmp.ConfirmBehavior.Replace,
--             select = false,
--         })
--     }
-- })

require('copilot').setup({
    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
            accept = "<C-y>",
            accept_word = false,
            accept_line = false,
        },
    },
})

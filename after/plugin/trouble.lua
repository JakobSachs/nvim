local trouble = require("trouble")

trouble.setup {
}

vim.keymap.set("n", "<leader>gl", function() trouble.open("diagnostics") end)

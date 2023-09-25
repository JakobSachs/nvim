local trouble = require("trouble")

trouble.setup {
    height = 5,
    icons = false,
    padding = false,
}

vim.keymap.set("n", "<leader>gl", function() trouble.open() end)

local builtin = require('telescope.builtin')


vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Vexplore)
vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)

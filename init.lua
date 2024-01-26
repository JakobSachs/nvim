vim.opt.runtimepath:prepend("/Users/jakobsachs/git/typing-metrics.lua")

require("typing-metrics").setup({})

require("user.remap")
require("user.set")
require("user.plugins")


local pywal = require('pywal')

pywal.setup()

function GetColorScheme(color)
    color = "pywal"
    -- color = "aurora"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

GetColorScheme()

-- Setup tint after colorscheme has been set
require("tint").setup()

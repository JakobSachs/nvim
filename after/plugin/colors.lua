function GetColorScheme(color)
    -- color = "pywal"
    -- color = "rose-pine-moon"
    color = "nvimgelion"
    vim.cmd.colorscheme(color)

    -- Uncomment for transparent background
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

GetColorScheme()

-- Setup tint after colorscheme has been set
require("tint").setup()

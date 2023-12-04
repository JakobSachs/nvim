function wpm_raw()
    return require("typing-metrics").get_statusline_raw()
end

function wpm()
    return require("typing-metrics").get_statusline()
end

require('lualine').setup({
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { wpm, wpm_raw },
        lualine_z = { 'location' }

    },
})

return {
    "github/copilot.vim",
    config = function ()
        vim.g.copilot_autostart = 0
        vim.api.nvim_create_autocmd('ColorScheme', {
          pattern = 'solarized',
          callback = function()
            vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
              fg = '#555555',
              ctermfg = 8,
              force = true
            })
          end
        })
        
    end
}

return {
  'bluz71/vim-moonfly-colors',
  lazy = false,
  priority = 1000,
  config = function()
    -- Terapkan colorscheme Moonfly
    vim.cmd 'colorscheme moonfly'

    -- Atur background menjadi transparan
    vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]
    vim.cmd [[highlight NormalNC guibg=NONE ctermbg=NONE]]
    vim.cmd [[highlight SignColumn guibg=NONE]]
    vim.cmd [[highlight VertSplit guibg=NONE]]
    vim.cmd [[highlight StatusLine guibg=NONE]]
    vim.cmd [[highlight StatusLineNC guibg=NONE]]
    vim.cmd [[highlight LineNr guibg=NONE]]
    vim.cmd [[highlight Folded guibg=NONE]]
    vim.cmd [[highlight NonText guibg=NONE]]

    -- Toggle background transparency
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      if bg_transparent then
        vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]
        vim.cmd [[highlight NormalNC guibg=NONE ctermbg=NONE]]
      else
        vim.cmd [[highlight Normal guibg=#080808 ctermbg=Black]]
      end
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}

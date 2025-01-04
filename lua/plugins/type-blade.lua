return {
  'jwalton512/vim-blade',
  config = function()
    vim.filetype.add {
      pattern = {
        ['.*%.blade%.php'] = 'blade',
      },
    }
  end,
}

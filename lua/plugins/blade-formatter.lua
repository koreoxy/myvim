return {
  'stevearc/conform.nvim', -- Pastikan mengganti dengan nama plugin yang sesuai
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        blade = { 'blade-formatter' },
      },
    }
  end,
}

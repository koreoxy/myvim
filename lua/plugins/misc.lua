return {
  {
    -- Replace Tmux Navigator with a Kitty Terminal toggle
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      local Terminal = require('toggleterm.terminal').Terminal

      -- Kitty terminal configuration
      local kitty = Terminal:new {
        cmd = 'kitty', -- Command to open Kitty
        hidden = true, -- Hide from buffer list
        direction = 'float', -- Open in floating window
        close_on_exit = true, -- Close terminal on process exit
        float_opts = {
          border = 'curved', -- Add a border to the floating terminal
        },
      }

      -- Set up keymaps for toggling Kitty
      require('toggleterm').setup {
        open_mapping = [[<C-0>]], -- Keymap for toggling terminal
        direction = 'float', -- Default floating window for terminal
      }

      -- Keybinding to toggle Kitty terminal
      vim.keymap.set('n', '<C-k>', function()
        kitty:toggle()
      end, { noremap = true, silent = true })
    end,
  },
  {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  {
    -- Powerful Git integration for Vim
    'tpope/vim-fugitive',
  },
  {
    -- GitHub integration for vim-fugitive
    'tpope/vim-rhubarb',
  },
  {
    -- Hints keybinds
    'folke/which-key.nvim',
  },
  {
    -- Autoclose parentheses, brackets, quotes, etc.
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
  },
  {
    -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    -- High-performance color highlighter
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
}

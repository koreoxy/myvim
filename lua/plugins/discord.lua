return {
  'andweeb/presence.nvim',
  config = function()
    require('presence'):setup({
      auto_update = true, -- Automatically update Discord status
      neovim_image_text = "Neovim - The Hyperextensible Editor", -- Custom text displayed under the Neovim image
      main_image = "neovim", -- Main image used in Discord Presence ("neovim" or "file")
      log_level = nil, -- Log messages (nil, "debug", "info", "warn", "error")
      debounce_timeout = 10, -- Debounce events (in seconds)
      enable_line_number = false, -- Displays the current line number instead of the current project
      blacklist = {}, -- A list of file paths or file types to disable Presence.nvim for
      buttons = true, -- Show buttons for opening/closing Neovim

      -- Rich Presence text options
      editing_text = "Editing %s", -- Format string rendered when editing a file
      file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer
      git_commit_text = "Committing changes", -- Format string rendered when committing changes
      plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins
      reading_text = "Reading %s", -- Format string rendered when reading a file
      workspace_text = "Working on %s", -- Format string rendered when in a workspace/project
      line_number_text = "Line %s out of %s", -- Format string rendered when enable_line_number is set to true
    })
  end,
}

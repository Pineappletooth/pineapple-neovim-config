return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  enabled=true,
  opts = function()
  local logo = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

    logo = string.rep("\n", 5) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = function() require('fzf-lua').files() end,                    desc = " Find file",            icon = " ", key = "f" },
          { action = "ene | startinsert",                       desc = " New file",             icon = " ", key = "n" },
          { action = "FzfLua oldfiles",                      desc = " Recent files",         icon = " ", key = "o" },
          { action = "FzfLua live_grep",                     desc = " Find text",            icon = " ", key = "g" },
          { action = 'Persisted load_last',                         desc = " Restore last session", icon = "󰑓 ", key = "r" },
          { action = 'PersistedFzf',                                           desc = " Find sessions",        icon = "󰣚 ", key = "s" },
          { action = 'lua Pick()',                      desc = " Find project",         icon = " ", key = "p" },
          { action = "e $MYVIMRC",                              desc = " Config",               icon = " ", key = "c" },
          { action = "qa",                                      desc = " Quit",                 icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    return opts
  end,
}

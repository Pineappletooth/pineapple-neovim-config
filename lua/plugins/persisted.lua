return{
  "olimorris/persisted.nvim",
  enabled = true,
  lazy = false,
  config = function()
    require("persisted").setup({
      use_git_branch = true,
    })

    require("fzf-lua").register_ui_select()

    vim.api.nvim_create_user_command("PersistedFzf", function()
      local function format(path)
        local name = vim.fn.fnamemodify(path, ":t:r")
        local dir, branch = name:match("^(.-)@@(.+)$")
        if not dir then dir = name end
        dir = dir:gsub("%%", "/")
        dir = dir:gsub("^" .. vim.pesc("/Users/" .. vim.fn.expand("$USER")), "~")
        if not dir:match("/$") then dir = dir .. "/" end
        if branch then
          return dir .. " (" .. branch .. ")"
        end
        return dir
      end

      local function open()
        local sessions = require("persisted").list()
        local display = vim.tbl_map(format, sessions)
        require("fzf-lua").fzf_exec(display, {
          prompt = "Load a session> ",
          actions = {
            ["default"] = function(selected)
              if selected and selected[1] then
                local idx = vim.iter(display):enumerate():find(function(_, v) return v == selected[1] end)
                if idx then
                  require("persisted").load({ session = sessions[idx] })
                end
              end
            end,
            ["ctrl-d"] = function(selected)
              for _, s in ipairs(selected) do
                local idx = vim.iter(display):enumerate():find(function(_, v) return v == s end)
                if idx then
                  require("persisted").delete_current({ path = sessions[idx] })
                end
              end
              vim.schedule(open)
            end,
          },
        })
      end

      open()
    end, {})
  end,
}

local M = {
  'echasnovski/mini.files',
  tag = 'v0.10.0',
}
function M.config()
  require("mini.files").setup( {
    options = {
      permanent_delete = false
    },
    windows = {
      preview = true,
      width_focus = 30,
      width_preview = 30,
    },
    mappings = {
      go_in_plus = "<CR>"
    }
  })
  vim.api.nvim_create_autocmd("User", {
    pattern = "MiniFilesActionRename",
    callback = function(event)
      local function get_clients()
        local ret = {} ---@type lsp.Client[]
        if vim.lsp.get_clients then
          ret = vim.lsp.get_clients()
        else
          ---@diagnostic disable-next-line: deprecated
          ret = vim.lsp.get_active_clients()
        end
        return ret
      end
      local clients = get_clients()
      for _, client in ipairs(clients) do
        if client.supports_method("workspace/willRenameFiles") then
          ---@diagnostic disable-next-line: invisible
          local resp = client.request_sync("workspace/willRenameFiles", {
            files = {
              {
                oldUri = vim.uri_from_fname(event.data.from),
                newUri = vim.uri_from_fname(event.data.to),
              },
            },
          }, 1000, 0)
          if resp and resp.result ~= nil then
            vim.lsp.util.apply_workspace_edit(resp.result, client.offset_encoding)
          end
        end
      end
    end,
  })
end
return M;

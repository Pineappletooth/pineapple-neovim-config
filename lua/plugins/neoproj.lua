return {
  "pluffie/neoproj",
  cmd = { "ProjectOpen", "ProjectNew" },
  config = function()
    vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
      callback = function()
        if vim.g.project_root ~= nil then
          require "neoproj".save_session()
        end
      end,
    })
  end
}


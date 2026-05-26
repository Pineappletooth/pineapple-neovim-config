return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-mini/mini.icons" },
  config = function()
    require("fzf-lua").setup({
    fzf_opts = {
      ["--info"] = "inline",
      ["--header"] = "enter:open  ctrl-q:quickfix  tab:multi-select",
    },
    actions = {
      files = {
        ["enter"]       = require("fzf-lua").actions.file_edit_or_qf,
        ["ctrl-q"]       = require("fzf-lua").actions.file_sel_to_qf,
        ["ctrl-Q"]       = require("fzf-lua").actions.file_sel_to_ll,
      },
    },
  })
end
}

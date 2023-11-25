return {
  "luukvbaal/statuscol.nvim",
  commit = "98d02fc90ebd7c4674ec935074d1d09443d49318",
  event = {"BufEnter"},
  config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
      segments = {
        {
          sign = {namespace={"gitsigns"}, maxwidth = 1, colwidth = 1 },
          click = "v:lua.ScSa"
        },
        {
          sign = { name = { "Diagnostic" }, maxwidth = 1, auto = true },
          click = "v:lua.ScSa"
        },
        {
          sign = { name = { ".*" }, maxwidth = 2, colwidth = 2, auto = true, wrap = true },
          click = "v:lua.ScSa"
        },
        {
          sign = { name = { "Mark" }, maxwidth = 1, colwidth = 2, auto = true },
        },

        { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa", },
        { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
      },
    })
  end,
}

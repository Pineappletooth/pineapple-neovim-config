return {
  "luukvbaal/statuscol.nvim",
  commit = "3b629754420919575a9e5758027d6e1831dbf2aa",
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

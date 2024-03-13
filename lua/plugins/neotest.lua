return {
  "nvim-neotest/neotest",
  dependencies = {
    {
      "antoinemadec/FixCursorHold.nvim",
    },
    {
      "nvim-neotest/neotest-jest",
    }
  },
  config = function()
     require('neotest-jest')({
          jestCommand = "npm run test --",
        })
  end
}

return {
  "nvim-neotest/neotest",
  commit = "d424d262d01bccc1e0b038c9a7220a755afd2a1f",
  dependencies = {
    {
      "antoinemadec/FixCursorHold.nvim",
      commit = "1900f89dc17c603eec29960f57c00bd9ae696495"
    },
    {
      "nvim-neotest/neotest-jest",
      commit = "d8b00a91e440474da20a8e9acdb0d72051078b8b"
    }
  },
  config = function()
     require('neotest-jest')({
          jestCommand = "npm run test --",
        })
  end
}

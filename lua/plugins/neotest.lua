return {
  "nvim-neotest/neotest",
  commit = "73043d666780e35185a77589e01bec96a52db910",
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

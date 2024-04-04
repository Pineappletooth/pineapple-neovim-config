return {
  'mfussenegger/nvim-jdtls',
  event = { "BufReadPre *.java", "BufNewFile *.java" },
  config = function()
    local config = {
      cmd = { 'jdtls.cmd' },
      root_dir = require('jdtls.setup').find_root({ 'gradlew', '.git', 'mvnw', '.gitignore', 'pom.xml' }),
    }
    vim.api.nvim_create_autocmd({ "FileType" }, {
      pattern = { "java" },
      callback = function()
        require('jdtls').start_or_attach(config)
      end,
    })
  end
}

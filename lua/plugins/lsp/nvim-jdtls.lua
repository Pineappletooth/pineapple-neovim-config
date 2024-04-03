return {
  'mfussenegger/nvim-jdtls',
  event = { "BufReadPre *.java", "BufNewFile *.java" },
  config = function()
    local config = {
      cmd = { 'jdtls.cmd' },
      root_dir = require('jdtls.setup').find_root({ 'gradlew', '.git', 'mvnw', '.gitignore', 'pom.xml' }),
    }
    require('jdtls').start_or_attach(config)
  end
}

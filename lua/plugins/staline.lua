return {
  'tamton-aquib/staline.nvim',
  lazy=false,
  config = function ()
    require('staline').setup({
      sections = {
        left = { '- ', '-mode', 'left_sep_double', 'branch', '','cwd', '','file_name' },
        mid = {'lsp'},
        right = { 'lsp_name', '  ' ,'Spaces: '.. vim.api.nvim_get_option_value("shiftwidth",{}),'  ',vim.bo.fileencoding:upper(),'right_sep_double', '-line_column' },
      },
      defaults = {
        line_column     = "[%l:%c] %p%%"
      }
    })
  end
}

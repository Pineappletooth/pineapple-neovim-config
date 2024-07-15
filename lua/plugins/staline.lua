return {
  'tamton-aquib/staline.nvim',
  lazy=false,
  config = function ()
    local function getSpaces()
        return 'Spaces: '.. vim.api.nvim_get_option_value("shiftwidth",{})
    end
    require('staline').setup({
      sections = {
        left = { '- ', '-mode', 'left_sep_double', 'branch', '','cwd', '','lsp' },
        mid = {'file_name'},
        right = { {'Staline',getSpaces},'  ',vim.bo.fileencoding:upper(),'right_sep_double', '-line_column' },
      },
      defaults = {
        line_column     = "[%l:%c] %p%%"
      }
    })
  end
}

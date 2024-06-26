local wilder = require('wilder')
wilder.setup({
    modes = {':', '/', '?'},
})

wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    highlights = {
      border = 'Normal', -- highlight to use for the border
      accent = 'PmenuExtraSel'
    },
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
    border = 'rounded',
  })
))

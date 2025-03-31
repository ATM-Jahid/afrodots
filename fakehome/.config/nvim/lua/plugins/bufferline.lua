-- To make bufferline look good
local color_bar = "#1f2335"
local color_inactive = "#1f2335"
local color_visible = "#292d3f"
local color_selected = "none"

return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        show_buffer_close_icons = false,
        separator_style = "slope",
      },
      highlights = {
        fill = { bg = color_bar },
        separator = { bg = color_inactive, fg = color_bar },
        separator_visible = { bg = color_visible, fg = color_bar },
        separator_selected = { bg = color_selected, fg = color_bar },
        background = { bg = color_inactive },
        buffer_visible = { bg = color_visible },
        buffer_selected = { bg = color_selected },
        diagnostic = { bg = color_inactive },
        diagnostic_visible = { bg = color_visible },
        diagnostic_selected = { bg = color_selected },
        hint = { bg = color_inactive },
        hint_visible = { bg = color_visible },
        hint_selected = { bg = color_selected },
        hint_diagnostic = { bg = color_inactive },
        hint_diagnostic_visible = { bg = color_visible },
        hint_diagnostic_selected = { bg = color_selected },
        info = { bg = color_inactive },
        info_visible = { bg = color_visible },
        info_selected = { bg = color_selected },
        info_diagnostic = { bg = color_inactive },
        info_diagnostic_visible = { bg = color_visible },
        info_diagnostic_selected = { bg = color_selected },
        warning = { bg = color_inactive },
        warning_visible = { bg = color_visible },
        warning_selected = { bg = color_selected },
        warning_diagnostic = { bg = color_inactive },
        warning_diagnostic_visible = { bg = color_visible },
        warning_diagnostic_selected = { bg = color_selected },
        error = { bg = color_inactive },
        error_visible = { bg = color_visible },
        error_selected = { bg = color_selected },
        error_diagnostic = { bg = color_inactive },
        error_diagnostic_visible = { bg = color_visible },
        error_diagnostic_selected = { bg = color_selected },
        modified = { bg = color_inactive },
        modified_visible = { bg = color_visible },
        modified_selected = { bg = color_selected },
        duplicate = { bg = color_inactive },
        duplicate_visible = { bg = color_visible },
        duplicate_selected = { bg = color_selected },
        indicator_visible = { bg = color_visible },
        indicator_selected = { bg = color_selected },
        pick = { bg = color_inactive },
        pick_visible = { bg = color_visible },
        pick_selected = { bg = color_selected },
      },
    },
  },
}

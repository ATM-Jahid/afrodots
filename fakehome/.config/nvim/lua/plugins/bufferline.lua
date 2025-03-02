-- To make bufferline look good
local color_bar = "#1f2335"
local color_inactive = "#1f2335"
local color_active = "none"

return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        show_buffer_close_icons = false,
        separator_style = "slope",
      },
      highlights = {
        fill = {
          bg = color_bar,
        },
        separator = {
          bg = color_inactive,
          fg = color_bar,
        },
        separator_visible = {
          bg = color_active,
          fg = color_bar,
        },
        separator_selected = {
          bg = color_active,
          fg = color_bar,
        },
        background = {
          bg = color_inactive,
        },
        buffer_visible = {
          bg = color_active,
        },
        buffer_selected = {
          bg = color_active,
        },
      },
    },
  },
}

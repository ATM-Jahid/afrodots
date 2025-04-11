-- Tokyonight storm with a transparent bg
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm",
      transparent = true,
      -- Bufferline transparency
      on_highlights = function(hl, c)
        hl.TabLineFill = {
          bg = c.none,
        }
      end,
    },
  },
}

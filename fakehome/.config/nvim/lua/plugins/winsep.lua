-- For colorful window separation
return {
  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = { "WinNew" },
    opts = {
      highlight = {
        fg = "#0B9FDE",
      },
    },
  },
}

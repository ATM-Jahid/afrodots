-- To reduce explorer width
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                width = 25,
              },
            },
          },
        },
      },
    },
  },
}

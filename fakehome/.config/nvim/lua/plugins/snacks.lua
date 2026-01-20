-- Stopgap measure since laststatus=0 gets overwritten
vim.api.nvim_set_hl(0, "DashboardStatusLine", { bg = "None" })

return {
  {
    "folke/snacks.nvim",
    opts = {
      -- To include recent files and projects
      dashboard = {
        example = "compact_files",
      },
      -- To make statusline invisible
      styles = {
        dashboard = {
          wo = {
            winhighlight = "StatusLine:DashboardStatusLine,StatusLineNC:DashboardStatusLine",
          },
        },
      },
      -- To reduce explorer width
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

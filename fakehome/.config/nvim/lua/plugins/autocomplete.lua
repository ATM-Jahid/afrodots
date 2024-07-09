return {
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.completion = {
        completeopt = "menu,menuone,noselect",
      }
      opts.mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<M-CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ["<M-Tab>"] = cmp.mapping(function()
          if cmp.visible() then
            cmp.select_next_item()
          end
        end),
      })
      opts.window = {
        completion = {
          winblend = 0,
        },
        documentation = {
          winblend = 0,
        },
      }
    end,
  },
}

return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Fusiona con la configuración original
      opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
        ["<Up>"] = require("cmp").mapping.select_prev_item(),
        ["<Down>"] = require("cmp").mapping.select_next_item(),
        ["<Tab>"] = require("cmp").mapping.confirm { select = true },
        ["<Esc>"] = require("cmp").mapping.close(),
      })
      return opts
    end,
  },
}

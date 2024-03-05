return {

  {
    "samharju/synthweave.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("synthweave-transparent")
      -- transparent version
      -- vim.cmd.colorscheme("synthweave-transparent")
    end,
  },

  require("notify").setup({
    background_colour = "#000000",
  }),
}

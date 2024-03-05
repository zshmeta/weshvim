return {
  {
    "hrsh7th/nvim-compe",
    config = function()
      require("compe").setup({
        source = {
          path = true,
          buffer = true,
          nvim_lsp = true,
          nvim_lua = true,
          treesitter = true,
        },
      })
    end,
  },
  {
    "hrsh7th/vim-vsnip",
    config = function()
      vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
    end,
  },
  {
    "hrsh7th/vim-vsnip-integ",
    config = function()
      vim.g.vsnip_filetypes = {
        javascriptreact = { "javascript" },
        typescriptreact = { "typescript" },
      }
    end,
  },
}

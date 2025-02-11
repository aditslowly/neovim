return {
  -- Plugin tambahan
  { "jose-elias-alvarez/null-ls.nvim" },
  { "prettier/vim-prettier", build = "yarn install --frozen-lockfile" },
  { "jose-elias-alvarez/typescript.nvim" },
  { "jwalton512/vim-blade" },
  { "akinsho/toggleterm.nvim" },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
    end,
  },

  -- PLugin untuk C++
  { "p00f/clangd_extensions.nvim" },
  { "mfussenegger/nvim-dap" },
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        filetype = {
          cpp = "g++ -std=c++17 -Wall -Wextra -o text.out % && ./test.out",
          javascript = "node %",
          php = "php %",
          python = "python3 %",
        },
      })
      require("toggleterm").setup({
          size = 12,
          open_maping = [[<C-/>]],
          direction = "horizontal",
      })
    end,
  },
}

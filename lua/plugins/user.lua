-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
return {
  -- change trouble config
  -- {
  --   "folke/trouble.nvim",
  --   -- opts will be merged with the parent spec
  --   opts = { use_diagnostic_signs = true },
  --   enabled = false,
  -- },

  -- disable trouble
  -- { "folke/trouble.nvim", enabled = false },

  -- transparent
  {
    "xiyaowong/transparent.nvim",
    cmd = {
      "TransparentEnable",
      "TransparentDisable",
      "TransparentToggle",
    },
  },

  {
    "mg979/vim-visual-multi",
    event = "VeryLazy"
  },

  -- GitHub Issues integration
  {
    "juninhopo/issues-neovim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
    branch = "main",
    config = function()
      require("issues_neovim").setup({
        enabled = true,
        keys = {
          open = "<leader>gi",
          close = "q",
          refresh = "r",
          navigate = { prev = "k", next = "j" },
          view_details = "<CR>",
        },
        ui = {
          width = 0.8,
          height = 0.8,
          border = "rounded",
        },
        github = {
          api_url = "https://api.github.com",
        }
      })
    end,
  }
}
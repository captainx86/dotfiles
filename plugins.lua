local plugins = {
  -- {
  --   "hrsh7th/nvim-cmp",
  --   lazy = false,
  --   opts = function()
  --     return require "custom.configs.cmp"
  --   end,
  --   config = function(_, opts)
  --     print(opts)
  --     require("cmp").setup(opts)
  --     require("cmp").filetype('plaintext', {
  --       sources = {}
  --     })
  --   end,
  -- },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua_language_server",
        "pyright",
        "pylint",
        "autopep8"

      },
    config = function(_, opts)
      require("mason").setup(opts)
    end,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "dart",
        -- "vue", "svelte",

       -- low level
        "c",
        "zig"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null_ls"
      end,
    },

     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  {
    "tpope/vim-surround",
    event = "BufEnter",
  },
  {
    "equalsraf/neovim-gui-shim",
    event = "BufEnter",
  },
  {
    "preservim/tagbar",
    event = "BufEnter",
    config = function ()
      vim.cmd("let g:tagbar_ctags_bin = 'C:\\Users\\Eric.Nelson\\ctags-p6.0.20230723.0-x64\\ctags.exe'")
    end
  },
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    config = function ()
      require("telescope").load_extension("harpoon")
    end,
  }
}

return plugins

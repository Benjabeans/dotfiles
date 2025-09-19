return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  -- LSP and Mason for Pyright
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "pyright" },
      }
    end,
  },

  -- Null-ls for Black, Ruff, MyPy
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  --DAP configuration
  require "plugins.nvim-dap",

  -- Moved section to dedicated file
  --{
  --  "mfussenegger/nvim-dap",
  --  dependencies = {
  --  "nvim-neotest/nvim-nio",
  --    "rcarriga/nvim-dap-ui",
  --    "mfussenegger/nvim-dap-python",
  --    "theHamsta/nvim-dap-virtual-text",
  --  },
  --  config = function()
  --    local dap = require("dap")
  --    local dapui = require("dapui")
  --    local dap_python = require("dap-python")

  --    require("dapui").setup({})
  --    require("nvim-dap-virtual-text").setup({
  --      commented = true, -- Show virtual text alongside comment
  --    })

  --    dap_python.setup("~/.venv/python/v3.13.5/bin/debugpy-adapter")

  --    vim.fn.sign_define("DapBreakpoint", {
  --      text = "",
  --      texthl = "DiagnosticSignError",
  --      linehl = "",
  --      numhl = "",
  --    })

  --    vim.fn.sign_define("DapBreakpointRejected", {
  --      text = "", -- or "❌"
  --      texthl = "DiagnosticSignError",
  --      linehl = "",
  --      numhl = "",
  --    })

  --    vim.fn.sign_define("DapStopped", {
  --      text = "", -- or "→"
  --      texthl = "DiagnosticSignWarn",
  --      linehl = "Visual",
  --      numhl = "DiagnosticSignWarn",
  --    })

  --    -- Automatically open/close DAP UI
  --    dap.listeners.after.event_initialized["dapui_config"] = function()
  --      dapui.open()
  --    end

  --    local opts = { noremap = true, silent = true }

  --    -- Toggle breakpoint
  --    vim.keymap.set("n", "<leader>tb", function()
  --      dap.toggle_breakpoint()
  --    end, opts, { desc = "Toggle breakpoint"})

  --    -- Continue / Start
  --    vim.keymap.set("n", "<leader>tc", function()
  --      dap.continue()
  --    end, opts)

  --    -- Step Over
  --    vim.keymap.set("n", "<leader>to", function()
  --      dap.step_over()
  --    end, opts)

  --    -- Step Into
  --    vim.keymap.set("n", "<leader>ti", function()
  --      dap.step_into()
  --    end, opts)

  --    -- Step Out
  --    vim.keymap.set("n", "<leader>tO", function()
  --      dap.step_out()
  --    end, opts)
  --
  --    -- Keymap to terminate debugging
  --  vim.keymap.set("n", "<leader>tq", function()
  --      require("dap").terminate()
  --    end, opts)

  --    -- Toggle DAP UI
  --    vim.keymap.set("n", "<leader>tu", function()
  --      dapui.toggle()
  --    end, opts)
  --  end,
  --},
}

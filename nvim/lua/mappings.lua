require "nvchad.mappings"


local map = vim.keymap.set

-- Settings for Debug Adapter

local opts = { noremap = true, silent = true }
local dap = require "dap"
local dapui = require "dapui"
local dap_python = require "dap-python"

-- Toggle breakpoint
map("n", "<leader>tb", function()
  dap.toggle_breakpoint()
end, { desc = "Debugging Toggle breakpoint" })

-- Continue / Start
map("n", "<leader>tc", function()
  dap.continue()
end, { desc = "Debugging Continue Debugging" })

-- Step Over
map("n", "<leader>to", function()
  dap.step_over()
end, { desc = "Debugging Step Over" })

-- Step Into
map("n", "<leader>ti", function()
  dap.step_into()
end, { desc = "Debugging Step Into" })

-- Step Out
map("n", "<leader>tO", function()
  dap.step_out()
end, { desc = "Debugging Step Out" })

-- Keymap to terminate debugging
map("n", "<leader>tq", function()
  require("dap").terminate()
end, { desc = "Debugging Terminate Session" })

-- Toggle DAP UI
map("n", "<leader>tu", function()
  dapui.toggle()
end, { desc = "Debugging Toggle Debugging UI" })

-- add yours here


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

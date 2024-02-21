---@type ChadrcConfig 
local M = {}
M.ui = {
  theme = 'bearded-arc',
  theme_toggle = { "bearded-arc", "onenord_light", },
  cmp = {
    style = "atom",
  },
  statusline = {
    theme = "vscode",
    separator_style = "default",
  },
  tabufline = {
    enabled = false,
  },
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M

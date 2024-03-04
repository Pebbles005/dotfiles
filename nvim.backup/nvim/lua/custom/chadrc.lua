---@type ChadrcConfig
local M = {}

M.ui = { theme = 'chadracula' ,
  hl_override ={
    NvDashAscii = {
      bg ="none",
      fg ="#cdd6f4"
    },
    NvDashButtons ={
      bg ="none",
      fg ="#cdd6f4"
    }
  }}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M

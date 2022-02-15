local lush = require('lush')
local hsl = lush.hsl

local selene = require('lush_theme.selene-nvim')

local spec = lush.extends({selene}).with(function()
  return {
    -- Custom colors here
  }
end)

return spec

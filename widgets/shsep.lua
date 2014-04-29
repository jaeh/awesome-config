local awful = require("awful")
local vicious = require("vicious")

-- Initialize widget
local sep = awful.widget.progressbar()

-- Progressbar properties
sep:set_width(1)
sep:set_height(18)
sep:set_vertical(true)
sep:set_background_color(nil)
sep:set_border_color(nil)
sep:set_color({ type = "linear", from = { 0, 0 }, to = { 1,0 }, stops = { {0, "#222222"},{1, "#AECF96"}}})

-- Register widget
vicious.register(sep, vicious.widgets.mem, 
  function()
    local value = 0
    
    if vicious.showhide == true then
      value = 100
    end
    return value
  end,
100000)

return sep

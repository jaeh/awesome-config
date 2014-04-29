local wibox = require("wibox")
local vicious = require("vicious")
local ipairs = ipairs

--Init    
local thermwidget = wibox.widget.textbox()
local naughty = require("naughty")
local beautiful = require("beautiful")

vicious.register(thermwidget, vicious.widgets.thermal,
  function (widget, args)
    local value = ''

    if vicious.showhide == true then
	  local color = beautiful.widget.white
	  
	  if args[1] > 90 then
		color = beautiful.widget.red
	  elseif args[1] > 75 then
		color = beautiful.widget.yellow
	  end

      value = args[1] .. '<span color="' .. color .. '">' .. 'C</span>'
    end

    return value
  end, 
20, "thermal_zone0")

return thermwidget

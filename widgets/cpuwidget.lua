-- Create a cpuwidget (usage%)

-- A widget who displays the percentage of CPU usage :)
-- The vicious.widgets.cpu return three variables, $1 is the percentage total usage.
-- $2 is the percentage of the first CPU usage, and $3 is the percentage of the second CPU usage.
-- I just use the first one, you can put all you want.

local wibox = require("wibox")
local vicious = require("vicious")
local naughty = require('naughty')
local beautiful = require('beautiful')

-- Initialize widget
local cpuwidget = wibox.widget.textbox()
-- Register widget
vicious.register(cpuwidget, vicious.widgets.cpu, function(widget,args)
  local total_load = args[5]
  local value = ""
  local color = beautiful.widget.white

  if vicious.showhide == true then
    if total_load > 70 then
		color = beautiful.widget.red
    elseif total_load > 40 then
		color = beautiful.widget.yellow
	end
    value = '<span color="' .. color .. '">cpu:</span> ' .. total_load .. '%'
  end
 
  return value
end, 3)

return cpuwidget

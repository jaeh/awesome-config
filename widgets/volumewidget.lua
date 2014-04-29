local wibox = require("wibox")
local vicious = require("vicious")
local awful = require("awful")

local naughty = require("naughty")

--My volume widget
local volumewidget = wibox.widget.textbox()

local control_open = 0

local mute = 0

vicious.register(volumewidget, vicious.widgets.volume, function(widget, args)

	awful.util.spawn_with_shell("echo " .. args[2] .. " > /home/j/test.txt")
	
	if args[2] == "♫" and args[1] > 0 then
		return args[1] .. args[2]
	else
		return  '-- ' .. args[2]
	end
end, 3, "Master")

volumewidget.toggle_mute = function()
	awful.util.spawn("amixer set Master toggle")
end

volumewidget:buttons(awful.util.table.join(
	awful.button({ }, 1,
	function () 
		if control_open == 0 then
			control_open = 1
			awful.util.spawn("pavucontrol")
		elseif control_open == 1 then
			control_open = 0
			awful.util.spawn("killall pavucontrol")
		end
	end)
))

return volumewidget

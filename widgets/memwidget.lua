--~ memory widget, shows percentage of total memory thats being used atm
local wibox = require('wibox')
local vicious = require('vicious')
local beautiful = require('beautiful')

memwidget = wibox.widget.textbox()

vicious.register(memwidget, vicious.widgets.mem, function(widget,args)
  local value = ""

  if vicious.showhide == true then
	local color = beautiful.widget.white

	if args[1] > 70 then
	  color = beautiful.widget.red
	elseif args[1] > 50 then
	  color = beautiful.widget.yellow
    end

    value = '<span color="' .. color .. '">mem:</span> ' .. args[1] .. '% '
  end
  return value
end, 5)

return memwidget

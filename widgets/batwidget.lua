local wibox = require('wibox')
local vicious = require('vicious')
local awful = require('awful')
local naughty = require('naughty')
local beautiful = require('beautiful')

-- Create a batwidget (status chrg%)

-- Initialize widget
local batwidget = wibox.widget.textbox()

-- Register widget
--Maybe you will have to change the BAT0 for BAT1, or BAT2... Try :)

local notified = false
local notifypercent = 12
local notifypercentstep = 2


vicious.register(batwidget, vicious.widgets.bat,
    function(widget, args)
        loadState = args[1]
        loadPercent = args[2]
        
        if loadPercent >= 98 then
            --battery is full
            return '<span color="' .. beautiful.widget.yellow .. '">ॐ</span>'
        end
        
        -- battery is almost empty
        if loadState == '-' then

            if loadPercent <= 3 then
				suspend()
            
            elseif loadPercent <= notifypercent then
                np = notifypercent - notifypercentstep
                if np >= loadPercent then
                    notifypercent = np

                    naughty.notify({ 
						preset = naughty.config.presets.critical,
                        title = "Battery is running low!",
                        text = 'Remaining: ' .. loadPercent,
                        timeout = 10
                    })
                end
            end
        elseif loadState == '+' then
            notifypercent = 12
        end		
		
		local color = "#FFFFFF"

        -- battery is being charged:
        if loadState == "+" then
            if loadPercent > 50 then
				color = beautiful.widget.green
			else 
				color = beautiful.widget.lightgreen
			end
        --battery gets discharged:
        else
			if loadPercent < 20 then
				color = beautiful.widget.red
			else
				color = beautiful.widget.yellow
			end
        end

        return '<span color="' .. color .. '">bat: </span>' .. loadPercent .. '%'
    end, 
5, "BAT0")

batwidget:buttons(awful.util.table.join(
	awful.button({ }, 3, 
	function ()
		suspend()
	end)
))

function suspend ()
  awful.util.spawn("/usr/bin/systemctl suspend")
end

return batwidget

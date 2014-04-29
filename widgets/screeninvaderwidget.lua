
-- Create a screeninvaderwidget
-- Initialize widget
screeninvaderwidget = wibox.widget.textbox()

local volume = 0
local access = false

local http = require("socket.http")

-- Register widget
vicious.register(screeninvaderwidget, vicious.widgets.wifi, 
  function(widget, args)
    --~ body, code, header = http.request("http://10.20.30.51/cgi-bin/get?/sound/volume/")

    --~ sStart, sEnd = string.find(body, "")
    
    if access == true then
      --~ return body
    end

  end, 
  5000, "wlan0") 
--~ 
--~ -- buttons for the wifi widget
--~ screeninvaderwidget:buttons(awful.util.table.join(
  --~ awful.button({}, 1, function() 
      --~ 
      --~ 
  --~ end) --Left click to make louder
--~ ))

return screeninvaderwidget

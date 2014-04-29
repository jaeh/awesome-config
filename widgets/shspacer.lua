local wibox = require('wibox')
local vicious = require('vicious')

--separator to allow easier layouting :)
shspacer = wibox.widget.textbox()

vicious.register(shspacer, vicious.widgets.mem, 
  function()
    local value = ""
    if vicious.showhide == true then
      value = " "
    end
    return value
  end,
  100000)

return shspacer

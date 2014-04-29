---------------------------
-- Default awesome theme --
---------------------------

local theme = {}
local awful = require('awful')

local conf_dir = awful.util.getdir('config')

theme.font          = 'Pixelade 10'

theme.bg_normal     = '#000000'
theme.bg_focus      = '#111111'
theme.bg_urgent     = '#ff0000'
theme.bg_minimize   = '#222222'

theme.fg_normal     = '#aaaaaa'
theme.fg_focus      = '#ffffff'
theme.fg_urgent     = '#ffffff'
theme.fg_minimize   = '#ffffff'

theme.border_width  = '1'
theme.border_normal = '#000000'
theme.border_focus  = '#535d6c'
theme.border_marked = '#91231c'

theme.widget = {}
theme.widget.white = "#AAAAAA"
theme.widget.lightgreen = "lightgreen"
theme.widget.green = "green"
theme.widget.yellow = "#FFF123"
theme.widget.red = "red"

theme.wallpaper_cmd = { 'awsetbg ' .. conf_dir .. '/themes/kallisti/background.png' }

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = '#ff0000'

-- Display the taglist squares
theme.taglist_squares_sel   = conf_dir .. '/themes/kallisti/taglist/squarefw.png'
theme.taglist_squares_unsel = conf_dir .. '/themes/kallisti/taglist/squarew.png'

theme.tasklist_floating_icon = conf_dir .. '/themes/kallisti/tasklist/floatingw.png'

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = conf_dir .. '/themes/kallisti/submenu.png'
theme.menu_height = '15'
theme.menu_width  = '125'

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = '#cc0000'

-- Define the image to load
theme.titlebar_close_button_normal = conf_dir .. '/themes/kallisti/titlebar/close_normal.png'
theme.titlebar_close_button_focus  = conf_dir .. '/themes/kallisti/titlebar/close_focus.png'

theme.titlebar_ontop_button_normal_inactive = conf_dir .. '/themes/kallisti/titlebar/ontop_normal_inactive.png'
theme.titlebar_ontop_button_focus_inactive  = conf_dir .. '/themes/kallisti/titlebar/ontop_focus_inactive.png'
theme.titlebar_ontop_button_normal_active = conf_dir .. '/themes/kallisti/titlebar/ontop_normal_active.png'
theme.titlebar_ontop_button_focus_active  = conf_dir .. '/themes/kallisti/titlebar/ontop_focus_active.png'

theme.titlebar_sticky_button_normal_inactive = conf_dir .. '/themes/kallisti/titlebar/sticky_normal_inactive.png'
theme.titlebar_sticky_button_focus_inactive  = conf_dir .. '/themes/kallisti/titlebar/sticky_focus_inactive.png'
theme.titlebar_sticky_button_normal_active = conf_dir .. '/themes/kallisti/titlebar/sticky_normal_active.png'
theme.titlebar_sticky_button_focus_active  = conf_dir .. '/themes/kallisti/titlebar/sticky_focus_active.png'

theme.titlebar_floating_button_normal_inactive = conf_dir .. '/themes/kallisti/titlebar/floating_normal_inactive.png'
theme.titlebar_floating_button_focus_inactive  = conf_dir .. '/themes/kallisti/titlebar/floating_focus_inactive.png'
theme.titlebar_floating_button_normal_active = conf_dir .. '/themes/kallisti/titlebar/floating_normal_active.png'
theme.titlebar_floating_button_focus_active  = conf_dir .. '/themes/kallisti/titlebar/floating_focus_active.png'

theme.titlebar_maximized_button_normal_inactive = conf_dir .. '/themes/kallisti/titlebar/maximized_normal_inactive.png'
theme.titlebar_maximized_button_focus_inactive  = conf_dir .. '/themes/kallisti/titlebar/maximized_focus_inactive.png'
theme.titlebar_maximized_button_normal_active = conf_dir .. '/themes/kallisti/titlebar/maximized_normal_active.png'
theme.titlebar_maximized_button_focus_active  = conf_dir .. '/themes/kallisti/titlebar/maximized_focus_active.png'

-- You can use your own command to set your wallpaper
theme.wallpaper = conf_dir .. '/themes/kallisti/background.png'

-- You can use your own layout icons like this:
theme.layout_fairh = conf_dir .. '/themes/kallisti/layouts/fairhw.png'
theme.layout_fairv = conf_dir .. '/themes/kallisti/layouts/fairvw.png'
theme.layout_floating  =  conf_dir .. '/themes/kallisti/layouts/floatingw.png'
theme.layout_magnifier = conf_dir .. '/themes/kallisti/layouts/magnifierw.png'
theme.layout_max = conf_dir .. '/themes/kallisti/layouts/maxw.png'
theme.layout_fullscreen = conf_dir .. '/themes/kallisti/layouts/fullscreenw.png'
theme.layout_tilebottom = conf_dir .. '/themes/kallisti/layouts/tilebottomw.png'
theme.layout_tileleft   = conf_dir .. '/themes/kallisti/layouts/tileleftw.png'
theme.layout_tile = conf_dir .. '/themes/kallisti/layouts/tilew.png'
theme.layout_tiletop = conf_dir .. '/themes/kallisti/layouts/tiletopw.png'
theme.layout_spiral  = conf_dir .. '/themes/kallisti/layouts/spiralw.png'
theme.layout_dwindle = conf_dir .. '/themes/kallistilayouts/dwindlew.png'

theme.awesome_icon = conf_dir .. '/themes/kallisti/logo.png'

return theme

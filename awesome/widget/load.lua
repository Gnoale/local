local wibox = require("wibox")
local beautiful = require("beautiful")
local awful = require("awful")
local gears = require("gears")

local loadWidget = wibox.widget {
    align  = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
}

awful.widget.watch('cat /proc/loadavg', 15,
    function(widget, stdout)
        text = (string.sub(stdout, 0, 15) .. '| ') 
        widget:set_text(text)
    end,
    loadWidget
)

return loadWidget

local wibox = require("wibox")
local beautiful = require("beautiful")
local awful = require("awful")
local gears = require("gears")

local  gpuWidget = wibox.widget {
    widget = wibox.widget.progressbar,
    shape         = gears.shape.rounded_bar,
    bar_shape        = gears.shape.rounded_bar,
    max_value     = 1,
    forced_height = 10,
    forced_width  = 100,
    paddings      = 1,
    border_width  = 1,
    border_color  = "#86F9E7",
    color = "#55BEB3",
    background_color = beautiful.bg_normal

}

--gpuWidget:add_value (10)

awful.widget.watch('bash -c "sensors | grep thermistor"', 15, 
    function(widget, stdout)
        local temp = string.sub(stdout, 16, 17) 
        widget:set_value(temp/100)
    end,
    gpuWidget
)

return gpuWidget

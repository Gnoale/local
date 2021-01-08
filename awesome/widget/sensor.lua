local wibox = require("wibox")
local beautiful = require("beautiful")
local awful = require("awful")
local gears = require("gears")


local sensorWidget = wibox.widget {
    align  = 'center',
    valign = 'center',
    widget = wibox.widget.textbox


}

awful.widget.watch('sensors', 15, 
    function(widget, stdout)
        for line in stdout:gmatch("[^\r\n]+") do
            if line:match("sensor = thermistor") then
                temp = string.sub(line, 16, 22) 
                text = ('GPU ' .. temp)
            end
             if line:match("sensor = thermal diode") then
                temp = string.sub(line, 16, 22) 
                text = (text .. ' | CPU ' .. temp)
            end
        end
        widget:set_text(text)
    end,
    sensorWidget
)

return sensorWidget


-- The progressbars will be on top of each other
-- local mycpubar1 = wibox.widget {
--    { value  = 0.2, color = grad1,
--        widget = wibox.widget.progressbar },
--    { value  = 0.4, color = grad2,
--        widget = wibox.widget.progressbar },
--    { value  = 0.6, color = grad3,
--        widget = wibox.widget.progressbar },
--    layout = wibox.layout.flex.vertical,
-- }
-- Now, add a rotate container, the height will become the width.
-- It act as if the wibox.layout.flex.vertical was
-- wibox.layout.flex.horizontal

local wibox = require("wibox")
local test_bar = wibox.widget {
    {
        { value  = 0.2, color = grad1,
            widget = wibox.widget.progressbar },
        { value  = 0.4, color = grad2,
            widget = wibox.widget.progressbar },
        { value  = 0.6, color = grad3,
            widget = wibox.widget.progressbar },
        layout = wibox.layout.flex.vertical,
    },
    direction = 'east',
    widget    = wibox.container.rotate
}

return test_bar

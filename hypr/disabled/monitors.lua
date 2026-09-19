
---####################---
--## MONITORS DESKTOP ##--
---####################---
--jump monitors

--variable for your monitors
mon1 = "DP-1"
mon2 = "DP-2"
mon3 = "DP-3"
local scale = "1"

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({output = mon1,mode = "1920x1080",position = "0x0",scale = scale})
hl.monitor({output = mon2,mode = "1920x1080",position = "1920x0",scale = scale})
hl.monitor({output = mon3,mode = "1920x1080",position = "3840x0",scale = scale})

--focus monitor, mod + 1-3
hl.bind(Mod .. " + 1",   hl.dsp.focus({ monitor = "DP-1" }))
hl.bind(Mod .. " + 2",   hl.dsp.focus({ monitor = "DP-2" }))
hl.bind(Mod .. " + 3",   hl.dsp.focus({ monitor = "DP-3" }))

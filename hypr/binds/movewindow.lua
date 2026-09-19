
-- To monitor (num row)
hl.bind(Mod .. " + SHIFT + 1",   hl.dsp.window.move({ monitor = "DP-1", follow = false}))
hl.bind(Mod .. " + SHIFT + 2",   hl.dsp.window.move({ monitor = "DP-2", follow = false}))
hl.bind(Mod .. " + SHIFT + 3",   hl.dsp.window.move({ monitor = "DP-3", follow = false}))

--left/right, up/down, through visible workspaces (hjkl)
hl.bind(Mod .. " + SHIFT + + J",  hl.dsp.window.move({ direction = "down", follow = false}))
hl.bind(Mod .. " + SHIFT + + K",  hl.dsp.window.move({ direction = "up", follow = false}))

--move window left or right, no follow
--use script to bound movement to monitor
--will loop back around to the first workspace in monitor
hl.bind(Mod .. " + SHIFT + K",  hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_window.sh prev"))
hl.bind(Mod .. " + SHIFT + J",  hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_window.sh next"))

--Move window, through all workspace
--hl.bind(Mod .. " + SHIFT + H",  hl.dsp.window.move({ workspace = "e-1", follow = false}))
--hl.bind(Mod .. " + SHIFT + L",  hl.dsp.window.move({ workspace = "e+1", follow = false}))


--move window left or right, no follow
--use script to bound movement to monitor
--will loop back around to the first workspace in monitor
hl.bind(Mod .. " + SHIFT + mouse_up",   hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_window.sh prev"))
hl.bind(Mod .. " + SHIFT + mouse_down",   hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_window.sh next"))
--hl.bind(Mod .. " + SHIFT + mouse_down",   hl.dsp.window.move ({ direction = "left" }))

--hl.bind(Mod .. " + SHIFT + H",  hl.dsp.window.move({ direction = "left" }))

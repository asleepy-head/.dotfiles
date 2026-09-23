
-- MOVE FOCUS --

--move focus up/down
hl.bind(Mod .. " + " .. move_window_focus_up,    hl.dsp.focus({ direction = "up" }))
hl.bind(Mod .. " + " .. move_window_focus_down,  hl.dsp.focus({ direction = "down" }))
--move focus between windows left/right
hl.bind(Mod .. " + " .. move_window_focus_left,  hl.dsp.focus({ direction = "left" }))
hl.bind(Mod .. " + " .. move_window_focus_right, hl.dsp.focus({ direction = "right" }))

--Focus window, Mod + arrow keys
hl.bind(Mod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(Mod .. " + right", hl.dsp.focus({ direction = "right" }))

-- WORKSPACE --

--focus monitor, mod + 1-3
hl.bind(Mod .. " + 1",   hl.dsp.focus({ monitor = mon1 }))
hl.bind(Mod .. " + 2",   hl.dsp.focus({ monitor = mon2 }))
hl.bind(Mod .. " + 3",   hl.dsp.focus({ monitor = mon3 }))

--Focus workspace, Mod + arrow keys
hl.bind(Mod .. " +  right",   hl.dsp.focus({ workspace = "e+1" }))
hl.bind(Mod .. " +  left",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(Mod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(Mod .. " + down",  hl.dsp.focus({ direction = "down" }))

--move focus left or right
--use script to bound movement to monitor
--will loop back around to the first workspace in monitor
hl.bind(Mod .. " + K",   hl.dsp.exec_cmd(calculate_move_focus_prev))
hl.bind(Mod .. " + J",   hl.dsp.exec_cmd(calculate_move_focus_next))

--move focus left or right
--use script to bound movement to monitor
--will loop back around to the first workspace in monitor
hl.bind(Mod .. " + mouse_down",   hl.dsp.exec_cmd(calculate_move_focus_next))
hl.bind(Mod .. " + mouse_up",   hl.dsp.exec_cmd(calculate_move_focus_prev))

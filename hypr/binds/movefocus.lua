
---##############---
--## MOVE FOCUS ##--
---##############---
--jump move focus

--move focus between windows left/right
hl.bind(Mod .. " + TAB + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(Mod .. " + TAB + L", hl.dsp.focus({ direction = "right" }))
--move focus up/down
hl.bind(Mod .. " + TAB + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(Mod .. " + TAB + J",  hl.dsp.focus({ direction = "down" }))

--Focus window, Mod + arrow keys
--hl.bind(Mod .. " + left",  hl.dsp.focus({ direction = "left" }))
--hl.bind(Mod .. " + right", hl.dsp.focus({ direction = "right" }))

---- WORKSPACE ----

--focus monitor, mod + 1-3
hl.bind(Mod .. " + 1",   hl.dsp.focus({ monitor = "DP-1" }))
hl.bind(Mod .. " + 2",   hl.dsp.focus({ monitor = "DP-2" }))
hl.bind(Mod .. " + 3",   hl.dsp.focus({ monitor = "DP-3" }))

--Focus workspace, Mod + arrow keys
hl.bind(Mod .. " +  right",   hl.dsp.focus({ workspace = "e+1" }))
hl.bind(Mod .. " +  left",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(Mod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(Mod .. " + down",  hl.dsp.focus({ direction = "down" }))


--move focus left or right
--use script to bound movement to monitor
--will loop back around to the first workspace in monitor
hl.bind(Mod .. " + K",   hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_focus.sh prev"))
hl.bind(Mod .. " + J",   hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_focus.sh next"))
--hl.bind(Mod .. " + J",   hl.dsp.focus({ workspace = "e-1" }))


--move focus left or right
--use script to bound movement to monitor
--will loop back around to the first workspace in monitor
hl.bind(Mod .. " + mouse_down",   hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_focus.sh next"))
hl.bind(Mod .. " + mouse_up",   hl.dsp.exec_cmd("/home/$USER/.local/bin/calculate_move_focus.sh prev"))

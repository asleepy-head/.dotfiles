-- Terminal Workspace 2 --

-- Focus monitor
-- special workspaces show up on whatever monitor is focused when toggled
-- even if you specify the monitor, for some reason :/
hl.bind(Mod .. " + " .. terminalworkspace2_bind,         hl.dsp.focus({monitor = "DP-2"}))

--Toggle workspace 
hl.bind(Mod .. " + " .. terminalworkspace2_bind,         hl.dsp.workspace.toggle_special("terminalworkspace2"))

--Move to workspace
hl.bind(Mod .. " + " .. sendto_terminalworkspace2_bind , hl.dsp.window.move({ workspace = "special:terminalworkspace2", follow = false }))

--If empty, open 
hl.workspace_rule({workspace = "special:terminalworkspace2", on_created_empty = terminal})


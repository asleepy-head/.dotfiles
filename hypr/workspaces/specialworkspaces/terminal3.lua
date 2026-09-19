-- Terminal Workspace 3 --

-- Focus monitor
-- special workspaces show up on whatever monitor is focused when toggled
-- even if you specify the monitor, for some reason :/
hl.bind(Mod .. " + " .. terminalworkspace3_bind,         hl.dsp.focus({monitor = "DP-3"}))

--Toggle workspace 
hl.bind(Mod .. " + " .. terminalworkspace3_bind,         hl.dsp.workspace.toggle_special("terminalworkspace3"))

--Move to workspace
hl.bind(Mod .. " + " .. sendto_terminalworkspace3_bind , hl.dsp.window.move({ workspace = "special:terminalworkspace3", follow = false }))

--If empty, open 
hl.workspace_rule({workspace = "special:terminalworkspace3", on_created_empty = terminal})


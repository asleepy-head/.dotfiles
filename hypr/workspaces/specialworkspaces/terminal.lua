-- Terminal Workspace --
hl.bind(Mod .. " + " .. terminalworkspace_bind,         hl.dsp.focus({monitor = "DP-1"}))
--Toggle workspace 
hl.bind(Mod .. " + " .. terminalworkspace_bind,         hl.dsp.workspace.toggle_special("terminalworkspace"))
--Move to workspace
hl.bind(Mod .. " + " .. sendto_terminalworkspace_bind , hl.dsp.window.move({ workspace = "special:terminalworkspace", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "special:terminalworkspace", monitor = "DP-1", on_created_empty = terminal})

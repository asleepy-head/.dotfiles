-- Game Launcher --
--Toggle workspace
hl.bind(Mod .. " + " .. gamelauncher_bind, hl.dsp.workspace.toggle_special("gamelauncher"))
--Move to workspace
hl.bind(Mod .. " + " .. sendto_gamelauncher_bind, hl.dsp.window.move({ workspace = "special:gamelauncher", follow = false }))
-- If created empty, open (app)
--If empty, open 
hl.workspace_rule({workspace = "special:gamelauncher",on_created_empty = gamelauncher})
--Bind to workspace
hl.window_rule({match = { class = gamelauncher},workspace = "special:gamelauncher",fullscreen_state = 0 })
-- Decoration rules
hl.workspace_rule({workspace = "special:gamelauncher",gaps_out = 100})

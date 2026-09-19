-- Audio Settings --
-- toggle worskpace
hl.bind(Mod .. " + " .. audiosettings_bind, hl.dsp.workspace.toggle_special("audiosettings"))
-- move to workspace
hl.bind(Mod .. " + " .. sendto_audiosettings_bind, hl.dsp.window.move({ workspace = "special:audiosettings", follow = false }))

-- If created empty, open (app)
hl.workspace_rule({workspace = "special:audiosettings",on_created_empty = audiosettings})
-- Bind window to workspace
hl.window_rule({match = { title = "pulsemixer" },workspace = "special:audiosettings"})
-- Decoration rules
hl.workspace_rule({workspace = "special:audiosettings", gaps_out = 100})

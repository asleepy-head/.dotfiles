
--workspaces 1-3
hl.monitor({output = mon1, mode = mon1_mode, position = mon1_position, scale = mon1_scale})

hl.workspace_rule({workspace = 1,monitor = mon1,persistent = mon1_persistent})
hl.workspace_rule({workspace = 2,monitor = mon1,persistent = mon1_persistent, default = true})
hl.workspace_rule({workspace = 3,monitor = mon1,persistent = mon1_persistent})

--workspaces 4-6
hl.monitor({output = mon2,mode = mon2_mode,position = mon2_position,scale = mon2_scale})
hl.workspace_rule({workspace = 4,monitor = mon2,persistent = mon2_persistent})
hl.workspace_rule({workspace = 5,monitor = mon2,persistent = mon2_persistent, default = true})
hl.workspace_rule({workspace = 6,monitor = mon2,persistent = mon2_persistent})

--workspaces 7-9
hl.monitor({output = mon3,mode = mon1_mode,position = mon3_position,scale = mon3_scale})
hl.workspace_rule({workspace = 7,monitor = mon3,persistent = mon3_persistent})
hl.workspace_rule({workspace = 8,monitor = mon3,persistent = mon3_persistent, default = true})
hl.workspace_rule({workspace = 9,monitor = mon3,persistent = mon3_persistent})


-- MISC --
----------

-- Fix some dragging issues with XWayland
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Ignore maximize requests from all apps. You'll probably like this.
local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)




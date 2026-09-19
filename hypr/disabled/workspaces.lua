-------------------------
-- WORKSPACES DESKTOP --
-------------------------
--monitors workspaces

local persist1 = true
local persist2 = true
local persist3 = true

--workspaces 1-3
hl.workspace_rule({workspace = 1,monitor = mon1,persistent = persist1})
hl.workspace_rule({workspace = 2,monitor = mon1,persistent = persist1,default = true})
hl.workspace_rule({workspace = 3,monitor = mon1,persistent = persist1})

--workspaces 4-6
hl.workspace_rule({workspace = 4,monitor = mon2,persistent = persist2})
hl.workspace_rule({workspace = 5,monitor = mon2,persistent = persist2,default = true})
hl.workspace_rule({workspace = 6,monitor = mon2,persistent = persist2})

--workspaces 7-9
hl.workspace_rule({workspace = 7,monitor = mon3,persistent = persist3})
hl.workspace_rule({workspace = 8,monitor = mon3,persistent = persist3,default = true})
hl.workspace_rule({workspace = 9,monitor = mon3,persistent = persist3})


-- Test script to verify UI fixes
local Players = game:GetService('Players')
local lp = Players.LocalPlayer

-- Check if main script works
if lp then
    print("Player found:", lp.Name)
    -- Load main script
    loadfile('/workspaces/fffish/main.lua')()
    print("Script loaded successfully!")
else
    print("No player found - this is expected in a dev environment")
end

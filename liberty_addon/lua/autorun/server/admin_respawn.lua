include("autorun/config.lua")
util.AddNetworkString("RespawnAdminHook")

-- local ply = LocalPlayer() 

hook.Add("PlayerSay", "RespawnAdminHook", function(sender, text)

    if !RespawnAdmin.RAdmin[sender:GetUserGroup()] then return end
    if text == "!respawn" then
        sender:Spawn()
        sender:SendLua("chat.AddText( Color( 255, 0, 0 ), '[Liberty RP] ', Color( 255, 255, 255 ), 'Vous avez était respawn avec succès !')")
    end
end)
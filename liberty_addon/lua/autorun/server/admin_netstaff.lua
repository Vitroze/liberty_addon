-- include("autorun/configdev.lua")
include("autorun/config.lua")
util.AddNetworkString("MessageAuto")
util.AddNetworkString("StaffMenu")

hook.Add("PlayerSay", "MessageAuto", function(ply, text)
    if text == DevStaff.Commande then
        if DevStaff.RAdmin[ply:GetUserGroup()] then
            net.Start("MessageAuto")
            net.Send(ply)
    	end
	end
end)

hook.Add("PlayerSay", "StaffMenu", function(ply, text)
    if text == CDfrAS.Commande then
        if CDfrAS.RAdmin[ply:GetUserGroup()] then
            net.Start("StaffMenu")
            net.Send(ply)
    	end
	end
end)

--[[ hook.Add("PlayerSay", "teraerf", function(ply, text)
    if text == TicketPanel.Commande then
        if TicketPanel.RAdmin[ply:GetUserGroup()] then
            net.Start("TicketGroup")
            net.Send(ply)
    	end
	end
end)
--]]
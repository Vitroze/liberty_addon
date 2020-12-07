--[[

hook.Add("PlayerNoClip", "noclip_cloak", function(ply, noClipState)
    if not ply:IsAdmin() then return false end

    ply:SetNoDraw(noClipState)
    ply:SetNotSolid(noClipState)
    ply:DrawWorldModel(not noClipState)
    if noClipState then
        ply:GodEnable()
        ply:ConCommand("ulx god", ply:Name())
        ply:ConCommand("ulx cloak",  ply:Name())
        ply:ChatPrint("[Liberty RP] Vous avez êtes automatiquement mis en clock et en god.")
    else
        ply:GodDisable()
        ply:ConCommand("ulx ungod", ply:Name())
        ply:ConCommand("ulx uncloak",  ply:Name())
        ply:ChatPrint("[Liberty RP] Vous avez étes automatiquement mis en unclock et en ungod.")
    end

    return true
end)
--]]

--[[

Fix error Notif

(Addon create by Vitroze_Gaming)

PRIVATE for Liberty RP

--]]

local function DisplayNotify(msg)
    local txt = msg:ReadString()
    GAMEMODE:AddNotify(txt, msg:ReadShort(), msg:ReadLong())
    surface.PlaySound("buttons/lightswitch2.wav")
end
 
usermessage.Hook("_Notify", DisplayNotify)
include("autorun/config.lua")
net.Receive("StaffMenu", function( len, ply )
    if !CDfrAS.RAdmin[LocalPlayer():GetUserGroup()] then return end
 
    local mat = Material("fondimagemessageauto.jpg")
    local frame = vgui.Create( "DFrame" )
    frame:SetSize( 1111, 753 )
    frame:Center()
    frame:MakePopup()
    frame:SetDraggable(false) 
    frame:ShowCloseButton(true)
    frame:SetTitle("")

    function frame:Paint( w, h )
	    surface.SetDrawColor(Color( 255, 255, 255, 150))
        surface.SetMaterial(mat)
        surface.DrawTexturedRect( 0, 0, 1111, 753 )    
    end


    local DermaButton = vgui.Create( "DButton", frame ) 
    DermaButton:SetText( "Administrez" )				
    DermaButton:SetPos( 25, 95 )					
    DermaButton:SetSize( 250, 30 )					
    DermaButton.DoClick = function()
    LocalPlayer():ConCommand("ulx_logecho 0")				
	LocalPlayer():ConCommand("ulx god", LocalPlayer():Name())	
	LocalPlayer():ConCommand("ulx noclip", LocalPlayer():Name())	
    LocalPlayer():ConCommand("ulx cloak",  LocalPlayer():Name())
    notification.AddLegacy( "MODE STAFF ACTIVE ", NOTIFY_GENERIC, 3) 
    chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Vous avez activez votre mode Staff")
 --   chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Le staff ", Color( 255, 0, 0 ), LocalPlayer():Name(), Color( 255, 255, 255 )," a activer le mode Staff")
    frame:Close()	
    end

    DermaButton.Paint = function()
        surface.SetDrawColor( 52, 152, 219 )
        surface.DrawRect( 0, 0, DermaButton:GetWide(), DermaButton:GetTall() )
    end

    local DermaButton2 = vgui.Create( "DButton", frame ) 
    DermaButton2:SetText( "Jouer RP" )				
    DermaButton2:SetPos( 25, 135 )					
    DermaButton2:SetSize( 250, 30 )					
    DermaButton2.DoClick = function()
	LocalPlayer():ConCommand("ulx ungod", LocalPlayer():Name())	
	LocalPlayer():ConCommand("ulx noclip",  LocalPlayer():Name())	
    LocalPlayer():ConCommand("ulx uncloak",  LocalPlayer():Name())
    LocalPlayer():ConCommand("ulx_logecho 1")	
    notification.AddLegacy( "MODE STAFF DESACTIVE ", NOTIFY_GENERIC, 3)  
    chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Vous avez désactivez votre mode Staff")
  --  chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Le staff ", Color( 255, 0, 0 ), LocalPlayer():Name(), Color( 255, 255, 255 )," a désactiver le mode Staff")
    frame:Close()			
    end

    
    DermaButton2.Paint = function()
        surface.SetDrawColor(52, 152, 219 )
        surface.DrawRect( 0, 0, DermaButton2:GetWide(), DermaButton2:GetTall() )
    end
    --[[
    DermaButton3 = vgui.Create( "DButton", frame ) 
    DermaButton3:SetText( "Message Automatique" )				
    DermaButton3:SetPos( 25, 175 )					
    DermaButton3:SetSize( 250, 30 )					
    DermaButton3.DoClick = Open(framemenudev)
     function button.DoClick()
    local panel = vgui.Create("DPanel")
    ...
    end
    RunConsoleCommand("say", "!menuadmin")
    notification.AddLegacy( "LE MENU MESSAGE AUTOMATIQUE EST EN DEV", NOTIFY_GENERIC, 3)  
    chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Le menu est en maintenance")
    frame:Close()			
    end
    --]]

    local DermaButton3 = vgui.Create( "DButton", frame ) 
    DermaButton3:SetText( "Message Automatique" )				
    DermaButton3:SetPos( 25, 175 )					
    DermaButton3:SetSize( 250, 30 )					
    DermaButton3.DoClick = function()
    RunConsoleCommand("say", "!menuadmin")
    notification.AddLegacy( "LE MENU MESSAGE AUTOMATIQUE EST EN DEV", NOTIFY_GENERIC, 3)  
    chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Le menu est en maintenance")			
    frame:Close()			
    end


    DermaButton3.Paint = function()
        surface.SetDrawColor(52, 152, 219 )
        surface.DrawRect( 0, 0, DermaButton3:GetWide(), DermaButton3:GetTall() )
    end

    local DermaButton4 = vgui.Create( "DButton", frame ) 
    DermaButton4:SetText( "Fermez" )				
    DermaButton4:SetPos( 25, 215 )					
    DermaButton4:SetSize( 250, 30 )					
    DermaButton4.DoClick = function()			
    frame:Close()			
    end


    DermaButton4.Paint = function()
        surface.SetDrawColor(52, 152, 219 )
        surface.DrawRect( 0, 0, DermaButton4:GetWide(), DermaButton4:GetTall() )
    end
end)
--[[-------------------------------------------------------------------------

local logoserv = Material("logoserv100.png")

hook.Add("HUDPaint", "jihudnovarpC1", function() 


logo

    surface.SetDrawColor(Color( 255, 255, 255, 150))
    surface.SetMaterial(Material("fondhud.jpg"))
    surface.DrawTexturedRect(0, ScrH()-60, 780, 65)

end)
---------------------------------------------------------------------------]]
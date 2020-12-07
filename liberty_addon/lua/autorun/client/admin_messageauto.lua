local ply = LocalPlayer()
include("autorun/config.lua")

net.Receive("MessageAuto", function( len, ply )
    if !DevStaff.RAdmin[LocalPlayer():GetUserGroup()] then return end


    local matmenu = Material("fondimagemessageauto.jpg")
    local framemenudev = vgui.Create( "DFrame" )
    framemenudev:SetSize( 1111, 753 )
    framemenudev:Center()
    framemenudev:MakePopup()
    framemenudev:SetDraggable(false) 
    framemenudev:ShowCloseButton(true)
    framemenudev:SetTitle("")

    function framemenudev:Paint( w, h )
        surface.SetDrawColor(Color( 255, 255, 255, 150))
        surface.SetMaterial(matmenu)
        surface.DrawTexturedRect( 0, 0, w, h)
    end

    local ButtonConduiteRP = vgui.Create( "DButton", frame ) 
    ButtonConduiteRP:SetText( "Conduite RP" )				
    ButtonConduiteRP:SetPos( 261, 59 )					
    ButtonConduiteRP:SetSize( 250, 30 )					
    ButtonConduiteRP.DoClick = function()
    RunConsoleCommand("say", "// Une conduite rp est obligatoire !")
    chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Le message à était bien envoyés")
 --   chat.AddText( Color( 255, 0, 0 ), "[Liberty RP] ", Color( 255, 255, 255 ), "Le staff ", Color( 255, 0, 0 ), LocalPlayer():Name(), Color( 255, 255, 255 )," a activer le mode Staff")
    framemenudev:Close()
   -- ButtonConduiteRP:Close()
    end

    ButtonConduiteRP.Paint = function()
    surface.SetDrawColor(52, 152, 219 )
    surface.DrawRect( 0, 0, ButtonConduiteRP:GetWide(), ButtonConduiteRP:GetTall() )
    end
end)

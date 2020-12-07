hook.Add("ContextMenuOpen", "DisallowContextMenu", function()
    if not LocalPlayer():IsAdmin() then
        ply:SendLua("chat.AddText( Color( 255, 0, 0 ), '[Liberty RP] ', Color( 255, 255, 255 ), 'Le context menu est actuellement bloqué raison : Développement')")
        return false
    end
end)
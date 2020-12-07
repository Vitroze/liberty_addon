hook.Add("CanPlayerSuicide", "BlockSuicide", function(ply)
    ply:SendLua("chat.AddText( Color( 255, 0, 0 ), '[Liberty RP] ', Color( 255, 255, 255 ), 'Le suicide est bloqué')")
    return false
end)
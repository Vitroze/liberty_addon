CDfrAS = CDfrAS or {}
DevStaff = DevStaff or {}
RespawnAdmin = RespawnAdmin or {}

-- TicketPanel = TicketPanel or {}

CDfrAS.RAdmin = { -- Nom de vos grades
    ["Fondateur"] = true,
	["superadmin"] = true,
    ["Gérant Staff"] = true,
	["admin"] = true,
	["Moderateur"] = true,
	["user"] = false,
}

--[[ TicketPanel.RAdmin = { -- Nom de vos grades
    ["Fondateur"] = true,
	["superadmin"] = true,
    ["Gérant Staff"] = true,
	["admin"] = true,
	["Moderateur"] = true,
	["user"] = true,
}
--]]

DevStaff.RAdmin = { -- Nom de vos grades
    ["Fondateur"] = true,
	["superadmin"] = true,
    ["Gérant Staff"] = false,
	["admin"] = false,
	["Moderateur"] = false,
	["user"] = false,
}

RespawnAdmin.RAdmin = {
    ["Fondateur"] = true,
	["superadmin"] = true,
    ["Gérant Staff"] = false,
	["admin"] = false,
	["Moderateur"] = false,
	["user"] = false,
}

CDfrAS.Commande = "!staff" -- Commande pour ouvrir le panel
-- TicketPanel.Commande = "!ticket"
DevStaff.Commande = "!menuadmin" -- Commande pour ouvrir le panel


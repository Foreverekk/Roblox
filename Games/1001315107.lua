local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Armory")
local S0 = T1:NewSection("Premium")
local S2 = T1:NewSection("Badges")

function batS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-bat.lua"))()
end

function shotgunS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-shotgun.lua"))()
end

function ak47S()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-ak47.lua"))()
end

function armorS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-armor.lua"))()
end

function badgesS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-badges.lua"))()
end

S1:NewButton("Bat/Golden Bat", "Will try to give you weapons", function()
    batS()
end)

S1:NewButton("Shotgun", "Will try to give you a weapon", function()
    shotgunS()
end)

S1:NewButton("AK-47", "Will try to give you a weapon", function()
    ak47S()
end)

S1:NewButton("Armor", "Will try to give you armor", function()
    armorS()
end)

S2:NewButton("MEET THE OWNER", "Collect", function()
    badgesS()
end)

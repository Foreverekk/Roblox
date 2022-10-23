local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Armory")
local S2 = T1:NewSection("Badges")

local batScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-bat.lua"))
function batS()
    loadstring(batScript)()
end

local shotgunScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-shotgun.lua"))
function shotgunS()
    loadstring(shotgunScript)()
end

local ak47Script = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-ak47.lua"))
function ak47S()
    loadstring(ak47Script)()
end

local armorScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-armor.lua"))
function armorS()
    loadstring(armorScript)()
end

local badgesScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-badges.lua"))
function badgesS()
    loadstring(badgesScript)()
end

S1:NewButton("Shotgun", "Will try to give you a weapon", function()
    shotgunS()
end)

S1:NewButton("AK-47", "Will try to give you a weapon", function()
    ak47S()
end)

S1:NewButton("Armor", "Will try to give you armor", function()
    armorS()
end)

S1:NewButton("Bat/Golden Bat [Premium]", "Will try to give you weapons", function()
    batS()
end)

S1:NewButton("Get all weapons/armor [Premium]", "Will try to give you weapons/armor", function()
    batS()
    shotgunS()
    ak47S()
    armorS()
end)

S2:NewButton("MEET THE OWNER [Premium]", "Collect", function()
    badgesS()
end)

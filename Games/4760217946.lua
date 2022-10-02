local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Badges")

function badgesS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-badges.lua"))()
end

S1:NewButton("Collect", "Collect all available badges", function()
    badgesS()
end)

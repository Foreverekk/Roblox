local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Badges")

local badgesScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-badges.lua"))
function badgesS()
    loadstring(badgesScript)()
end

S1:NewButton("Collect", "Collect all available badges", function()
    badgesS()
end)

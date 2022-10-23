local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Badges")

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Badges [Premium]")
local badgesTime = 5

local badgesScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-badges.lua"))()
function badgesS()
    loadstring(badgesScript)()
end

S1:NewButton("Collect", "Collect all available badges", function()
    wait(badgesTime)
    badgesS()
end)

S1_2:NewSlider("Wait [BExec]", "Execute after (1-60) seconds", 60, 1, function(c)
    if _G.KeyInput == _G.KeyP then
        if c == 0 then
            badgesTime = 0.05
        else
            badgesTime = c
        end
    else
        badgesTime = badgesTime
    end
end)

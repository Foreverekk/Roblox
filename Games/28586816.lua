local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Points")
local pointsTime = 5

function pointsS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-points.lua"))()
end

S1:NewToggle("Points", "Autofarm points and level", function(c)
    points = c
    
    while points and wait(pointsTime) do
        pointsS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not points then return end
    end)
end
end)

if _G.KeyInput == _G.KeyP then
    S1_2:NewSlider("Wait", "Autofarm points every (5-120) seconds", 120, 5, function(c)
        pointsTime = c
    end)
else
    S1_2:NewSlider("Premium", "You need a premium for this", 120, 5, function(c)
        pointsTime = pointsTime
    end)
end

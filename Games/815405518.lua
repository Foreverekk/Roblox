local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Points [Premium]")
local pointsTime = 1

local pointsScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-points.lua"))()
function pointsS()
    loadstring(pointsScript)()
end

S1:NewToggle("Survivals", "Autofarm survivals and points", function(c)
    points = c
    
    while points and wait(pointsTime) do
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Anchored = true
        pointsS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not points then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Anchored = false
            return
        end
    end)
end
end)

S1_2:NewSlider("Wait [BExec]", "Execute every (1-60) seconds", 60, 1, function(c)
    if _G.KeyInput == _G.KeyP then
        if c == 0 then
            pointsTime = 0.05
        else
            pointsTime = c
        end
    else
        pointsTime = pointsTime
    end
end)

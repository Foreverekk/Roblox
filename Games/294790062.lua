local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil
local S2 = T1:NewSection("Add")

function pointsS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-points.lua"))()
end

S1:NewToggle("Points", "Autofarm points", function(c)
    points = c
    
    while points and wait() do
        pointsS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not points then return end
    end)
end
end)

S2:NewButton("Points (10)", "Add points", function()
    pointsS()
end)

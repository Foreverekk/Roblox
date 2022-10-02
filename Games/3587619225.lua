local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local stages = nil
local prestige = nil

function stagesS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-stages.lua"))()
end

function prestigeS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-prestige.lua"))()
end

S1:NewToggle("Stages", "Autofarm stages", function(c)
    stages = c
    
    while stages and wait(0.1) do
        stagesS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not stages then return end
    end)
end
end)

S1:NewToggle("Prestige", "Autofarm prestige", function(c)
    prestige = c
    
    while prestige and wait(0.5) do
        prestigeS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not prestige then return end
    end)
end
end)

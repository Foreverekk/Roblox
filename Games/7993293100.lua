function pointsS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-points.lua"))()
end

function goldS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-gold.lua"))()
end

function crossingsS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-crossings.lua"))()
end


local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil
local gold = nil

S1:NewToggle("Points", "Sometimes stops when you die", function(c)
    points = c
    
    while points and wait(3) do
        pointsS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not points then return end
    end)
end
end)

S1:NewToggle("Gold (Buggy)", "First - go to the UFO place then execute", function(c)
    gold = c
    
    while gold and wait (10) do
        goldS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not gold then return end
    end)
end
end)

S1:NewToggle("Crossings", "Autofarm crossings", function(c)
    crossings = c
    
    while crossings and wait(15) do
        crossingsS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not crossings then return end
    end)
end
end)

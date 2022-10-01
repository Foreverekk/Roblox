local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil

function pointsS()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Scripts/"..game.PlaceId.."-points.lua"))()
end

S1:NewToggle("Survivals", "Autofarm survivals and points", function(c)
    points = c
    
    while points and wait(1) do
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

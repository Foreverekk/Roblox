local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local obby = nil
game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("EffectsScreenGui").Enabled = false

function obbyS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-obby.lua"))()
end

S1:NewToggle("Obby (+$)", "Autofarm obby", function(c)
    obby = c
    
    while obby and wait(2) do
        obbyS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not obby then return end
    end)
end
end)

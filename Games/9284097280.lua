local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local collect = nil

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Collect")
local collectTime = 2

game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("EffectsScreenGui").Enabled = false

function collectS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-collect.lua"))()
end

S1:NewToggle("Collect", "Autocollect money", function(c)
    collect = c
    
    while collect and wait(collectTime) do
        collectS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not collect then return end
    end)
end
end)

if _G.KeyInput == _G.KeyP then
    S1_2:NewSlider("Wait", "Autocollect money every (2-120) seconds", 120, 2, function(c)
        collectTime = c
    end)
else
    S1_2:NewSlider("Premium", "You need a premium for this", 120, 2, function(c)
        collectTime = collectTime
    end)
end

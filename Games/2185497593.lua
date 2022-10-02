local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local moneyxp = nil

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Money/XP")
local moneyxpTime = 5

function moneyxpS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-moneyxp.lua"))()
end

S1:NewToggle("Money/XP", "Autofarm money/xp", function(c)
    moneyxp = c
    
    while moneyxp and wait(moneyxpTime) do
        moneyxpS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not moneyxp then return end
    end)
end
end)

S1_2:NewSlider("Wait", "Autoearn money/xp every (5-120) seconds", 120, 5, function(c)
    moneyxpTime = c
end)

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local moneyxp = nil

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("AutoFarm [Premium]")
local moneyxpTime = 5

local moneyxpScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-moneyxp.lua"))
function moneyxpS()
    loadstring(moneyxpScript)()
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

S1_2:NewSlider("Wait [BExec]", "Execute every (5-60) seconds", 60, 5, function(c)
    if _G.KeyInput == _G.KeyP then
        if c == 0 then
            moneyxpTime = 0.05
        else
            moneyxpTime = c
        end
    else
        moneyxpTime = moneyxpTime
    end
end)

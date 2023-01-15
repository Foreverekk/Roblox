local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local cash = nil

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Cash [Premium]")
local cashTime = 5

local cashScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-cash.lua"))
function cashS()
    loadstring(cashScript)()
end

S1:NewToggle("Cash", "Autofarm cash", function(c)
    cash = c
    
    while cash and wait(cashTime) do
        cashS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not cash then return end
    end)
end
end)

S1_2:NewSlider("Wait [BExec]", "Execute every (1-60) seconds", 60, 1, function(c)
    if _G.KeyInput == _G.KeyP then
        if c == 0 then
            cashTime = 0.05
        else
            cashTime = c
        end
    else
        cashTime = cashTime
    end
end)

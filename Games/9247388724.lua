local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Cats")
local S2 = T1:NewSection("AutoFarm")
local money = nil
local S3 = T1:NewSection("Add")

function collectS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-collect.lua"))()
end

function money1000S()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-money1000.lua"))()
end

function money500S()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-money500.lua"))()
end

function money100S()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-money100.lua"))()
end

function money25S()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-money25.lua"))()
end

S1:NewButton("Collect", "Collect all available cats", function()
    collectS()
end)

S2:NewToggle("Money", "Autofarm money", function(c)
    money = c
    
    while money and wait() do
        money1000S()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not money then return end
    end)
end
end)

S3:NewButton("Money (1000)", "Add money", function()
    money1000S()
end)

S3:NewButton("Money (500)", "Add money", function()
    money500S()
end)

S3:NewButton("Money (100)", "Add money", function()
    money100S()
end)

S3:NewButton("Money (25)", "Add money", function()
    money25S()
end)

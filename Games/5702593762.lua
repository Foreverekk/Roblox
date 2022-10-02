local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil
local S2 = T1:NewSection("Teleport")
local S3 = T1:NewSection("Misc")
local rockfall = nil

function pointsS()
    wait(1)
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-points.lua"))()
end

function badgesS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-badges.lua"))()
end

function winnerS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-winner.lua"))()
end

function rockfallS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-rockfall.lua"))()
end

S1:NewToggle("Steps & Points", "Autofarm steps and points", function(c)
    points = c
    
    while points do
        pointsS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not points then return end
    end)
end
end)

S2:NewButton("Badges", "Collect all available badges", function()
    badgesS()
end)

S2:NewButton("Winner", "TP to winners spawn", function()
    winnerS()
end)

S3:NewToggle("RockFall (Cost: 50)", "Rockfall every 2.4 seconds", function(c)
    rockfall = c
    
    while rockfall and wait(2.4) do
        rockfallS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not rockfall then return end
    end)
end
end)

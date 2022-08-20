function pointsS()
    wait(0.1)
    for i,v in ipairs(workspace.Stairs:GetChildren()) do
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 0)
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 1)
    end
end

function badgesS()
    for i,v in ipairs(workspace.Badges:GetChildren()) do
        wait(0.2)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
end

function winnerS()
    for i,v in ipairs(workspace.Badges:GetChildren()) do
        local tp = workspace.Spawns.WinnerSpawn.Position
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tp)
    end
end


local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil
local S2 = T1:NewSection("Teleport")

S1:NewToggle("Steps & Points", "Will Autofarm steps and points", function(t)
    points = t
    
    while points do
        pointsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not points then return end
        pointsS()
    end)
end
end)

S2:NewButton("Badges", "TP to available badges", function()
    badgesS()
end)

S2:NewButton("Winner", "TP to winners spawn", function()
    winnerS()
end)

function pointsS()
    wait(3)
    for i,v in ipairs(workspace.CurrentPointCoins:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "CoinCollision" then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
end

function goldS()
    wait(5)
    for i,v in ipairs(game.ReplicatedStorage.Outside.Gold:GetChildren()) do
        wait(0.2)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
    wait(1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Spawns.SpawnLocation)
end


local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil
local gold = nil

S1:NewToggle("Points", "Autofarm points", function(t)
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

S1:NewToggle("Gold", "Autofarm gold", function(t)
    gold = t
    
    while gold do
        goldS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not gold then return end
        goldS()
    end)
end
end)

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
    wait(10)
    for i,v in ipairs(game.ReplicatedStorage.Outside.Gold:GetChildren()) do
        wait(0.2)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
    wait(1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Spawns.SpawnLocation.Position)
end

function crossingsS()
    wait(15)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Spawns.SpawnLocation.Position)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    local Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-21, 119, 853)})
    Tween1:Play()
    Tween1.Completed:Wait()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(8, Enum.EasingStyle.Linear)
    local Tween2 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5, 119, -930)})
    Tween2:Play()
    Tween2.Completed:Wait()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    local Tween3 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-9.5, 41, -1051)})
    Tween3:Play()
    Tween3.Completed:Wait()
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

S1:NewToggle("Gold (Buggy)", "Autofarm gold", function(t)
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

S1:NewToggle("Crossings", "Autofarm crossings", function(t)
    crossings = t
    
    while crossings do
        crossingsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not crossings then return end
        crossingsS()
    end)
end
end)


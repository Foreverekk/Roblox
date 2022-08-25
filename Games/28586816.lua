function pointsS()
    for i,v in ipairs(workspace.XPDrops:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    local Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-266.79, 677.628, -398.15)})
    Tween1:Play()
    wait(1.1)
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    local Tween2 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-263.643, 442.55, -644.229)})
    Tween2:Play()
    wait(1.1)
    local Tween3 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-266.796, 240.526, -1542.6)})
    Tween3:Play()
    wait(1.1)
    local Tween4 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-265.588, 142.915, -2350.8)})
    Tween4:Play()
    wait(5)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil

S1:NewToggle("Points", "Autofarm points and level", function(c)
    points = c
    
    while points and wait(5) do
        pointsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not points then return end
        pointsS()
    end)
end
end)

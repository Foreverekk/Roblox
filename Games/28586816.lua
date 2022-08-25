function pointsS()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    local Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-266.79, 677.628, -398.15)})
    Tween1:Play()
    Tween1.Completed:Wait()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    local Tween2 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-263.643, 442.55, -644.229)})
    Tween2:Play()
    Tween2.Completed:Wait()
    local Tween3 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-267.975, 525.545, -974.188)})
    Tween3:Play()
    Tween3.Completed:Wait()
    local Tween4 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-266.796, 240.526, -1542.6)})
    Tween4:Play()
    Tween4.Completed:Wait()
    local Tween5 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-264.997, 368.305, -1847.72)})
    Tween5:Play()
    Tween5.Completed:Wait()
    local Tween6 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-265.588, 142.915, -2350.8)})
    Tween6:Play()
    Tween6.Completed:Wait()
    wait(1)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    wait(5)
end

function xpS()
    if game:GetService("Players")["LocalPlayer"].Character.AlreadyGotXP then
        game:GetService("Players")["LocalPlayer"].Character.AlreadyGotXP:Destroy()
    end
    for i,v in ipairs(workspace.XPDrops:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local points = nil

S1:NewToggle("Points", "Autofarm points and level", function(c)
    points = c
    
    while points and wait(1) do
        pointsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not points then return end
        pointsS()
    end)
end
end)

S1:NewToggle("XP", "Autofarm XP and level", function(c)
    xp = c
    
    while xp and wait(1) do
        xpS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not xp then return end
        xpS()
    end)
end
end)

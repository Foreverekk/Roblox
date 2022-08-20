function autofarmS()
    wait(0.5)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14, 154, -15)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    local Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-14, 154, -15)}):Play()
    Tween1:Play()
    Tween1.Completed:Wait()
    local Tween2 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-16, 164.5, -57.5)}):Play()
    Tween2:Play()
    Tween2.Completed:Wait()
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local autofarm = nil

S1:NewToggle("Survivals", "Autofarm survivals and points", function(t)
    autofarm = t
    
    while autofarm do
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        autofarmS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not autofarm then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            return
        end
        autofarmS()
    end)
end
end)

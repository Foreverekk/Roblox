function autofarmS()
    wait(3)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.7, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1106, 61.5, 115.5)}):Play()
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local autofarm = nil

S1:NewToggle("Cash", "Autofarm cash", function(t)
    autofarm = t
    
    while autofarm do
        autofarmS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not autofarm then return end
        autofarmS()
    end)
end
end)

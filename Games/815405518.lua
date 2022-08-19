while wait(0.5) and Enabled do
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.7, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-14.0395, 154.114, -15.0101)}):Play()
    wait(0.5)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-16.2154, 164.597, -57.6469)}):Play()
end

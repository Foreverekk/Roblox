while wait(3) and Enabled do   
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.7, Enum.EasingStyle.Linear)
    tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1105.77, 61.5607, 115.465)}):Play()
end

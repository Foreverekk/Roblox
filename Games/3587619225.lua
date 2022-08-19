while wait(0.1) and Enabled do
    game:GetService("ReplicatedStorage").Events.prestige:FireServer()
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Checkpoints:FindFirstChild(tostring(num)) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Checkpoints:FindFirstChild(tostring(num)).CFrame
    end
end

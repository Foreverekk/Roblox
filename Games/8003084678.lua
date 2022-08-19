while wait(0.1) and Enabled do
    num = game.Players.LocalPlayer.leaderstats.Stage.Value + 1
    if workspace.Stages:FindFirstChild(tostring(num)) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Stages:FindFirstChild(tostring(num)).Spawn.CFrame
    else
        for i,v in ipairs(workspace:FindFirstChild("Restart Obby"):GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            end
        end
    end
end

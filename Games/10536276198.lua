while wait(1) and Enabled do
    for i,v in ipairs(workspace.Scriptable.Tokens:GetDescendants()) do
        if v.Parent and v.Parent.Name == "Token" then
            wait(0.1)
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
        end
    end
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.SpawnLocation.Position)
end
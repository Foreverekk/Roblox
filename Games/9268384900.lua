for i,v in ipairs(workspace.Fighters:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.1)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)
    end
end
for i,v in ipairs(workspace.Stickmen:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.1)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
    end
end

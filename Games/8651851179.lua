for i,v in ipairs(workspace.Collectibles:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "Hitbox" then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.1)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
    end
end

for i,v in ipairs(game.ReplicatedStorage.Hidden:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent and v.Parent.Name == "Hitbox" then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.1)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
    end
end

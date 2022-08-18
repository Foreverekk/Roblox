for i,v in ipairs(workspace.Pals:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent and v.Parent.collectionScript then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.1)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
    end
end

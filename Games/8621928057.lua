for i,v in ipairs(workspace.Pou:GetDescendants()) do
    if v.Name == "BadgeID" and v.Parent then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.5)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
    end
end

-- Codes:
--  Rainbow Pou: 2536124
--  Robux: 425891
--  Secret: 85644126
--  OOF Pou: 21
--  Robot: 181521520
--  Sun Pou: 125677

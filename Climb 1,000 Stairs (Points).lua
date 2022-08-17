--By Foreverekk

enabled = true

while enabled do
    wait(0.5)
    for i,v in ipairs(workspace.Stairs:GetChildren()) do
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 0)
    end
end

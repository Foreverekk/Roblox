--By Foreverekk

for i,v in ipairs(game.ReplicatedStorage.Outside.Gold:GetChildren()) do
    wait(0.2)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end

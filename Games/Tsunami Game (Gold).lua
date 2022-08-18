game.StarterGui:SetCore("SendNotification", {
    Title = "Credits";
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })

while wait(1) and Enabled do
    for i,v in ipairs(game.ReplicatedStorage.Outside.Gold:GetChildren()) do
        wait(0.2)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Spawns.SpawnLocation)
end
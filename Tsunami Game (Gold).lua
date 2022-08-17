game.StarterGui:SetCore("SendNotification", {
    Title = "Credits";
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })

for i,v in ipairs(game.ReplicatedStorage.Outside.Gold:GetChildren()) do
    wait(0.2)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end

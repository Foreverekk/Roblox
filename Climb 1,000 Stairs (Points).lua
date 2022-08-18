game.StarterGui:SetCore("SendNotification", {
    Title = game.Name;-- Climb 1,000 Stairs (Points)
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })

while wait(3) and Enabled do
    wait(0.1)
    for i,v in ipairs(workspace.Stairs:GetChildren()) do
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 0)
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 1)
    end
end

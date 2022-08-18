game.StarterGui:SetCore("SendNotification", {
    Title = game.Name;-- Find the Milks (Coins)
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
})

while wait(3) and Enabled do
    wait(0.1)
    for i,v in ipairs(workspace.Coins:GetChildren()) do
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 0)
        wait(0.1)
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 1)
    end
end

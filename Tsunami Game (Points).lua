game.StarterGui:SetCore("SendNotification", {
    Title = "Credits";
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })

while wait(1) and Enabled do
    for i,v in ipairs(workspace.CurrentPointCoins:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        end
    end
end

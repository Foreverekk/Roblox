game.StarterGui:SetCore("SendNotification", {
    Title = game.Name;-- Find the Milks (Milks)
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
})

for i,v in ipairs(workspace.Map.InteractingParts.Milks:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.1)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
    end
end

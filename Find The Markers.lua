game.StarterGui:SetCore("SendNotification", {
    Title = "Credits";
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })

for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent and v.Parent.Parent["Color 1"] then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
        wait(0.128)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)
    end
end

game.StarterGui:SetCore("SendNotification", {
    Title = "Credits";
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
    })

while wait() and Enabled do
    for i,v in ipairs(workspace.Scriptable.Tokens:GetDescendants()) do
        if v.Parent and v.Parent.Name == "Token" then
            wait(0.1)
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
        end
    end
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.SpawnLocation.Position)
    wait(1)
end

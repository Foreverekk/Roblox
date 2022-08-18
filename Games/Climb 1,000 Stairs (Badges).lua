game.StarterGui:SetCore("SendNotification", {
    Title = game.Name;-- Climb 1,000 Stairs (Badges)
    Text = "Made by Foreverekk.#0007";
    Duration = math.huge;
    Button1 = "Ok"
})

for i,v in ipairs(workspace.Badges:GetChildren()) do
    wait(0.2)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end

wait(0.3)
local tp = workspace.Spawns.WinnerSpawn.Position
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tp)

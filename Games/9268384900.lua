function animeS()
    for i,v in ipairs(workspace.Fighters:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Anime")

S1:NewButton("Collect", "Collect all available anime", function()
    animeS()
end)
